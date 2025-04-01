import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'applied_jobs_widget.dart' show AppliedJobsWidget;
import 'package:flutter/material.dart';

class AppliedJobsModel extends FlutterFlowModel<AppliedJobsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
