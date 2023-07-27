import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SHSSchoolsNewModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String category = 'A';

  String residency = 'DAY/BOARDING';

  String gender = 'MALE';

  String region = 'CENTRAL';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for categoryDD widget.
  String? categoryDDValue;
  FormFieldController<String>? categoryDDValueController;
  // State field(s) for residencyDD widget.
  String? residencyDDValue;
  FormFieldController<String>? residencyDDValueController;
  // State field(s) for genderDD widget.
  String? genderDDValue;
  FormFieldController<String>? genderDDValueController;
  // State field(s) for regionDD widget.
  String? regionDDValue;
  FormFieldController<String>? regionDDValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
