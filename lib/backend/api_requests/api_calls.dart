import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? password = '',
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "$id",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'https://bwj-time-tracker-v1-437306.lm.r.appspot.com/mobile/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.username''',
      ));
  static String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.role''',
      ));
  static String? jobNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.job_number''',
      ));
  static String? tool(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tool''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  static String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
}

class AuthCheckCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'authCheck',
      apiUrl: 'https://bwj-time-tracker-v1-437306.lm.r.appspot.com/mobile/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.username''',
      ));
  static String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.role''',
      ));
  static String? jobNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.job_number''',
      ));
  static String? tool(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tool''',
      ));
}

class ScanCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? jobNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "job-number": "$jobNumber"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'scan',
      apiUrl:
          'https://bwj-time-tracker-v1-437306.lm.r.appspot.com/mobile/home/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static List<String>? tools(dynamic response) => (getJsonField(
        response,
        r'''$.tools''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class StopCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    int? timespan,
  }) async {
    final ffApiRequestBody = '''
{
  "timespan": "$timespan"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'stop',
      apiUrl:
          'https://bwj-time-tracker-v1-437306.lm.r.appspot.com/mobile/stop/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static List<String>? tools(dynamic response) => (getJsonField(
        response,
        r'''$.tools''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CommentCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? jobNumber = '',
    String? comment = '',
  }) async {
    final ffApiRequestBody = '''
{
  "comment": "$comment",
  "job-number": "$jobNumber"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'comment',
      apiUrl:
          'https://bwj-time-tracker-v1-437306.lm.r.appspot.com/mobile/comment/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static List<String>? tools(dynamic response) => (getJsonField(
        response,
        r'''$.tools''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CommentCopyCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? jobNumber = '',
    String? comment = '',
  }) async {
    final ffApiRequestBody = '''
{
  "comment": "$comment",
  "job-number": "$jobNumber"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'comment Copy',
      apiUrl:
          'https://bwj-time-tracker-v1-437306.lm.r.appspot.com/mobile/comment/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static List<String>? tools(dynamic response) => (getJsonField(
        response,
        r'''$.tools''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CheckCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? jobNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "job-number": "$jobNumber"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'check',
      apiUrl:
          'https://bwj-time-tracker-v1-437306.lm.r.appspot.com/mobile/check/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static List<String>? tools(dynamic response) => (getJsonField(
        response,
        r'''$.tools''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DeliverCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? jobNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "job-number": "$jobNumber"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deliver',
      apiUrl:
          'https://bwj-time-tracker-v1-437306.lm.r.appspot.com/mobile/deliver/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static List<String>? tools(dynamic response) => (getJsonField(
        response,
        r'''$.tools''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class StartCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? jobNumber = '',
    String? tool = '',
  }) async {
    final ffApiRequestBody = '''
{
  "job-number": "$jobNumber",
  "tool": "$tool"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'start',
      apiUrl:
          'https://bwj-time-tracker-v1-437306.lm.r.appspot.com/mobile/start/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static List<String>? tools(dynamic response) => (getJsonField(
        response,
        r'''$.tools''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
