import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dashboard_job_seeker_widget.dart' show DashboardJobSeekerWidget;
import 'package:flutter/material.dart';

class DashboardJobSeekerModel
    extends FlutterFlowModel<DashboardJobSeekerWidget> {
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
