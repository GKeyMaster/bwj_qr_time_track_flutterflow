import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index_page_widget.dart' show IndexPageWidget;
import 'package:flutter/material.dart';

class IndexPageModel extends FlutterFlowModel<IndexPageWidget> {
  ///  Local state fields for this page.

  String? id;

  String? password;

  bool isLoginFailed = false;

  String? errorMsg;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (authCheck)] action in IndexPage widget.
  ApiCallResponse? authCheckResult;
  // State field(s) for UserId widget.
  FocusNode? userIdFocusNode;
  TextEditingController? userIdTextController;
  String? Function(BuildContext, String?)? userIdTextControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Backend Call - API (login)] action in Button widget.
  ApiCallResponse? loginCallback;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    userIdFocusNode?.dispose();
    userIdTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
