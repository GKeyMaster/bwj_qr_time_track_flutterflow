import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comment_page_widget.dart' show CommentPageWidget;
import 'package:flutter/material.dart';

class CommentPageModel extends FlutterFlowModel<CommentPageWidget> {
  ///  Local state fields for this page.

  int timespan = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for comment widget.
  FocusNode? commentFocusNode;
  TextEditingController? commentTextController;
  String? Function(BuildContext, String?)? commentTextControllerValidator;
  // Stores action output result for [Backend Call - API (comment)] action in SUBMIT widget.
  ApiCallResponse? apiResulttqi;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commentFocusNode?.dispose();
    commentTextController?.dispose();
  }
}
