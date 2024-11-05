import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scan_page_widget.dart' show ScanPageWidget;
import 'package:flutter/material.dart';

class ScanPageModel extends FlutterFlowModel<ScanPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for job-number widget.
  FocusNode? jobNumberFocusNode;
  TextEditingController? jobNumberTextController;
  String? Function(BuildContext, String?)? jobNumberTextControllerValidator;
  var jobNumber = '';
  // Stores action output result for [Backend Call - API (scan)] action in IconButton widget.
  ApiCallResponse? scanResult;
  // Stores action output result for [Backend Call - API (scan)] action in Button widget.
  ApiCallResponse? scanResult1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    jobNumberFocusNode?.dispose();
    jobNumberTextController?.dispose();
  }
}
