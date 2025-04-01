import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'common_text_filed_model.dart';
export 'common_text_filed_model.dart';

class CommonTextFiledWidget extends StatefulWidget {
  const CommonTextFiledWidget({super.key});

  @override
  State<CommonTextFiledWidget> createState() => _CommonTextFiledWidgetState();
}

class _CommonTextFiledWidgetState extends State<CommonTextFiledWidget> {
  late CommonTextFiledModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonTextFiledModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _model.textController,
      focusNode: _model.textFieldFocusNode,
      autofocus: false,
      obscureText: false,
      decoration: InputDecoration(
        hintText: 'Enter your email',
        hintStyle: FlutterFlowTheme.of(context).bodyLarge.override(
              fontFamily: 'Inter',
              letterSpacing: 0.0,
            ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).info,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).primary,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        contentPadding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 20.0),
      ),
      style: FlutterFlowTheme.of(context).bodySmall.override(
            fontFamily: 'Inter',
            letterSpacing: 0.0,
          ),
      minLines: 1,
      keyboardType: TextInputType.emailAddress,
      validator: _model.textControllerValidator.asValidator(context),
    );
  }
}
