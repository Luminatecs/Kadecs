import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/app_bar_drawer/app_bar_drawer_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AppBarDrawer component.
  late AppBarDrawerModel appBarDrawerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarDrawerModel = createModel(context, () => AppBarDrawerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    appBarDrawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
