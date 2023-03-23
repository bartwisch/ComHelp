import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaFeedbackModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txt_titel widget.
  TextEditingController? txtTitelController;
  String? Function(BuildContext, String?)? txtTitelControllerValidator;
  // State field(s) for txt_patext widget.
  TextEditingController? txtPatextController;
  String? Function(BuildContext, String?)? txtPatextControllerValidator;
  // State field(s) for txt_feedback widget.
  TextEditingController? txtFeedbackController;
  String? Function(BuildContext, String?)? txtFeedbackControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtTitelController?.dispose();
    txtPatextController?.dispose();
    txtFeedbackController?.dispose();
  }

  /// Additional helper methods are added here.

}
