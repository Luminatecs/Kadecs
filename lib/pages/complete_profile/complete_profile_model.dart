import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompleteProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for school widget.
  TextEditingController? schoolController;
  String? Function(BuildContext, String?)? schoolControllerValidator;
  // State field(s) for schoolLevel widget.
  String? schoolLevelValue;
  FormFieldController<String>? schoolLevelValueController;
  // State field(s) for formLevel widget.
  String? formLevelValue;
  FormFieldController<String>? formLevelValueController;
  // State field(s) for interestsHobbies widget.
  TextEditingController? interestsHobbiesController;
  String? Function(BuildContext, String?)? interestsHobbiesControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    yourNameController?.dispose();
    schoolController?.dispose();
    interestsHobbiesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
