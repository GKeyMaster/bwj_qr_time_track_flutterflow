import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _token = await secureStorage.getString('ff_token') ?? _token;
    });
    await _safeInitAsync(() async {
      _username = await secureStorage.getString('ff_username') ?? _username;
    });
    await _safeInitAsync(() async {
      _jobNumber = await secureStorage.getString('ff_jobNumber') ?? _jobNumber;
    });
    await _safeInitAsync(() async {
      _tool = await secureStorage.getString('ff_tool') ?? _tool;
    });
    await _safeInitAsync(() async {
      _role = await secureStorage.getString('ff_role') ?? _role;
    });
    await _safeInitAsync(() async {
      _tools = await secureStorage.getStringList('ff_tools') ?? _tools;
    });
    await _safeInitAsync(() async {
      _startTime = await secureStorage.read(key: 'ff_startTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_startTime'))!)
          : _startTime;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    secureStorage.setString('ff_token', value);
  }

  void deleteToken() {
    secureStorage.delete(key: 'ff_token');
  }

  String _username = '';
  String get username => _username;
  set username(String value) {
    _username = value;
    secureStorage.setString('ff_username', value);
  }

  void deleteUsername() {
    secureStorage.delete(key: 'ff_username');
  }

  String _jobNumber = '';
  String get jobNumber => _jobNumber;
  set jobNumber(String value) {
    _jobNumber = value;
    secureStorage.setString('ff_jobNumber', value);
  }

  void deleteJobNumber() {
    secureStorage.delete(key: 'ff_jobNumber');
  }

  String _tool = '';
  String get tool => _tool;
  set tool(String value) {
    _tool = value;
    secureStorage.setString('ff_tool', value);
  }

  void deleteTool() {
    secureStorage.delete(key: 'ff_tool');
  }

  String _role = '';
  String get role => _role;
  set role(String value) {
    _role = value;
    secureStorage.setString('ff_role', value);
  }

  void deleteRole() {
    secureStorage.delete(key: 'ff_role');
  }

  String _error = '';
  String get error => _error;
  set error(String value) {
    _error = value;
  }

  List<String> _tools = [];
  List<String> get tools => _tools;
  set tools(List<String> value) {
    _tools = value;
    secureStorage.setStringList('ff_tools', value);
  }

  void deleteTools() {
    secureStorage.delete(key: 'ff_tools');
  }

  void addToTools(String value) {
    tools.add(value);
    secureStorage.setStringList('ff_tools', _tools);
  }

  void removeFromTools(String value) {
    tools.remove(value);
    secureStorage.setStringList('ff_tools', _tools);
  }

  void removeAtIndexFromTools(int index) {
    tools.removeAt(index);
    secureStorage.setStringList('ff_tools', _tools);
  }

  void updateToolsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    tools[index] = updateFn(_tools[index]);
    secureStorage.setStringList('ff_tools', _tools);
  }

  void insertAtIndexInTools(int index, String value) {
    tools.insert(index, value);
    secureStorage.setStringList('ff_tools', _tools);
  }

  DateTime? _startTime = DateTime.fromMillisecondsSinceEpoch(1730702520000);
  DateTime? get startTime => _startTime;
  set startTime(DateTime? value) {
    _startTime = value;
    value != null
        ? secureStorage.setInt('ff_startTime', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_startTime');
  }

  void deleteStartTime() {
    secureStorage.delete(key: 'ff_startTime');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
