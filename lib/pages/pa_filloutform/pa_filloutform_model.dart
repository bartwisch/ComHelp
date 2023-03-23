import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaFilloutformModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txt_vorname widget.
  TextEditingController? txtVornameController;
  String? Function(BuildContext, String?)? txtVornameControllerValidator;
  // State field(s) for txt_nachname widget.
  TextEditingController? txtNachnameController;
  String? Function(BuildContext, String?)? txtNachnameControllerValidator;
  // State field(s) for txt_abteilung widget.
  TextEditingController? txtAbteilungController;
  String? Function(BuildContext, String?)? txtAbteilungControllerValidator;
  // State field(s) for txt_information widget.
  TextEditingController? txtInformationController;
  String? Function(BuildContext, String?)? txtInformationControllerValidator;
  // State field(s) for txt_kommentar widget.
  TextEditingController? txtKommentarController;
  String? Function(BuildContext, String?)? txtKommentarControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtVornameController?.dispose();
    txtNachnameController?.dispose();
    txtAbteilungController?.dispose();
    txtInformationController?.dispose();
    txtKommentarController?.dispose();
  }

  /// Additional helper methods are added here.

}
