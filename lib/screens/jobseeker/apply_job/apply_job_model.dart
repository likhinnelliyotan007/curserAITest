import '/flutter_flow/flutter_flow_util.dart';
import 'apply_job_widget.dart' show ApplyJobWidget;
import 'package:flutter/material.dart';

class ApplyJobModel extends FlutterFlowModel<ApplyJobWidget> {
  ///  Local state fields for this page.

  bool emailState = false;

  String? jobId;

  ///  State fields for stateful widgets in this page.

  // State field(s) for firstNameTextField widget.
  FocusNode? firstNameTextFieldFocusNode;
  TextEditingController? firstNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      firstNameTextFieldTextControllerValidator;
  // State field(s) for emailAddressTextField widget.
  FocusNode? emailAddressTextFieldFocusNode;
  TextEditingController? emailAddressTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailAddressTextFieldTextControllerValidator;
  // State field(s) for phoneNumberTextField widget.
  FocusNode? phoneNumberTextFieldFocusNode;
  TextEditingController? phoneNumberTextFieldTextController;
  String? Function(BuildContext, String?)?
      phoneNumberTextFieldTextControllerValidator;
  // State field(s) for noticePeriodTextField widget.
  FocusNode? noticePeriodTextFieldFocusNode;
  TextEditingController? noticePeriodTextFieldTextController;
  String? Function(BuildContext, String?)?
      noticePeriodTextFieldTextControllerValidator;
  // State field(s) for coverLetterTextField widget.
  FocusNode? coverLetterTextFieldFocusNode;
  TextEditingController? coverLetterTextFieldTextController;
  String? Function(BuildContext, String?)?
      coverLetterTextFieldTextControllerValidator;
  // State field(s) for additionalTextField widget.
  FocusNode? additionalTextFieldFocusNode;
  TextEditingController? additionalTextFieldTextController;
  String? Function(BuildContext, String?)?
      additionalTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameTextFieldFocusNode?.dispose();
    firstNameTextFieldTextController?.dispose();

    emailAddressTextFieldFocusNode?.dispose();
    emailAddressTextFieldTextController?.dispose();

    phoneNumberTextFieldFocusNode?.dispose();
    phoneNumberTextFieldTextController?.dispose();

    noticePeriodTextFieldFocusNode?.dispose();
    noticePeriodTextFieldTextController?.dispose();

    coverLetterTextFieldFocusNode?.dispose();
    coverLetterTextFieldTextController?.dispose();

    additionalTextFieldFocusNode?.dispose();
    additionalTextFieldTextController?.dispose();
  }
}
