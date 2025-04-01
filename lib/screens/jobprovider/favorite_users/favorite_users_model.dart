import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'favorite_users_widget.dart' show FavoriteUsersWidget;
import 'package:flutter/material.dart';

class FavoriteUsersModel extends FlutterFlowModel<FavoriteUsersWidget> {
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
