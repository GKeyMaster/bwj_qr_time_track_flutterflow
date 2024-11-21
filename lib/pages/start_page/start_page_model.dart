import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'start_page_widget.dart' show StartPageWidget;
import 'package:flutter/material.dart';

class StartPageModel extends FlutterFlowModel<StartPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for tool widget.
  String? toolValue;
  FormFieldController<String>? toolValueController;
  // Stores action output result for [Backend Call - API (start)] action in Button widget.
  ApiCallResponse? apiResultagv;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
