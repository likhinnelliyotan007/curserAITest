import '/flutter_flow/flutter_flow_util.dart';
import 'applicant_profile_widget.dart' show ApplicantProfileWidget;
import 'package:flutter/material.dart';

class ApplicantProfileModel extends FlutterFlowModel<ApplicantProfileWidget> {
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
