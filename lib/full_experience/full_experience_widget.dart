import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'full_experience_model.dart';
export 'full_experience_model.dart';

class FullExperienceWidget extends StatefulWidget {
  const FullExperienceWidget({Key? key}) : super(key: key);

  @override
  _FullExperienceWidgetState createState() => _FullExperienceWidgetState();
}

class _FullExperienceWidgetState extends State<FullExperienceWidget> {
  late FullExperienceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FullExperienceModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'fullExperience'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F4F8),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/App_Icon-19.jpg',
              ).image,
            ),
          ),
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x9AFFFFFF), Colors.white],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        FlutterFlowIconButton(
                          borderColor: Color(0xFF6F61EF),
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor: Color(0x4D9489F5),
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: Color(0xFF15161E),
                            size: 24.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'FULL_EXPERIENCE_arrow_back_rounded_ICN_O');
                            logFirebaseEvent('IconButton_navigate_back');
                            context.safePop();
                          },
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                      ))
                        FlutterFlowIconButton(
                          borderColor: Color(0xFF6F61EF),
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          fillColor: Color(0x4D9489F5),
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: Color(0xFF15161E),
                            size: 44.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'FULL_EXPERIENCE_PAGE_IconButtonD_ON_TAP');
                            logFirebaseEvent('IconButtonD_navigate_back');
                            context.safePop();
                          },
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 64.0, 16.0, 70.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Text(
                          'Get the full experience',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF15161E),
                                fontSize: 32.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                      ))
                        Text(
                          'Get the full experience',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF15161E),
                                fontSize: 50.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'GHS 150',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF15161E),
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                      ))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'GHS 150',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF15161E),
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            '🔹In-depth information on SHS Schools\n🔹In-depth information on Course Electives ',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF606A85),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                      ))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            '🔹In-depth information on SHS Schools\n🔹In-depth information on Course Electives ',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF606A85),
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: Color(0xFFE5E7EB),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 16.0, 0.0, 24.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (responsiveVisibility(
                              context: context,
                              tablet: false,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Expanded(
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'FULL_EXPERIENCE_PAGE_REQUEST_BTN_ON_TAP');
                                    if (FFAppState().requestPremium) {
                                      logFirebaseEvent(
                                          'Button_update_app_state');
                                      setState(() {
                                        FFAppState().cancelPremium = true;
                                      });
                                      logFirebaseEvent('Button_wait__delay');
                                      await Future.delayed(
                                          const Duration(milliseconds: 1000));
                                      logFirebaseEvent(
                                          'Button_update_app_state');
                                      setState(() {
                                        FFAppState().requestPremium = false;
                                      });
                                      logFirebaseEvent('Button_backend_call');

                                      await currentUserReference!
                                          .update(createUsersRecordData(
                                        email: '',
                                      ));
                                    } else {
                                      logFirebaseEvent(
                                          'Button_update_app_state');
                                      setState(() {
                                        FFAppState().requestPremium = true;
                                      });
                                      logFirebaseEvent('Button_backend_call');

                                      await PremiumRequestRecord.collection
                                          .doc()
                                          .set(createPremiumRequestRecordData(
                                            email: currentUserEmail,
                                            requested: true,
                                          ));
                                      logFirebaseEvent('Button_show_snack_bar');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'REQUEST SENT',
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Luckiest Guy',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 6000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .textColor,
                                        ),
                                      );
                                    }
                                  },
                                  text: () {
                                    if (FFAppState().requestPremium == true) {
                                      return 'Cancel Request';
                                    } else if (FFAppState().cancelPremium ==
                                        true) {
                                      return 'Request';
                                    } else {
                                      return 'Request';
                                    }
                                  }(),
                                  icon: Icon(
                                    Icons.ios_share,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: valueOrDefault<Color>(
                                      () {
                                        if (FFAppState().requestPremium ==
                                            true) {
                                          return FlutterFlowTheme.of(context)
                                              .tertiary;
                                        } else if (FFAppState().cancelPremium ==
                                            true) {
                                          return FlutterFlowTheme.of(context)
                                              .customColor1;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .customColor1;
                                        }
                                      }(),
                                      FlutterFlowTheme.of(context).customColor1,
                                    ),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF15161E),
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: Color(0xFFE5E7EB),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
                              Expanded(
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'FULL_EXPERIENCE_PAGE_ButtonD_ON_TAP');
                                    if (FFAppState().requestPremium) {
                                      logFirebaseEvent(
                                          'ButtonD_update_app_state');
                                      setState(() {
                                        FFAppState().cancelPremium = true;
                                      });
                                      logFirebaseEvent('ButtonD_wait__delay');
                                      await Future.delayed(
                                          const Duration(milliseconds: 1000));
                                      logFirebaseEvent(
                                          'ButtonD_update_app_state');
                                      setState(() {
                                        FFAppState().requestPremium = false;
                                      });
                                      logFirebaseEvent('ButtonD_backend_call');

                                      await PremiumRequestRecord.collection
                                          .doc()
                                          .set(createPremiumRequestRecordData(
                                            email: currentUserEmail,
                                            requested: false,
                                          ));
                                    } else {
                                      logFirebaseEvent(
                                          'ButtonD_update_app_state');
                                      setState(() {
                                        FFAppState().requestPremium = true;
                                      });
                                      logFirebaseEvent('ButtonD_backend_call');

                                      await PremiumRequestRecord.collection
                                          .doc()
                                          .set(createPremiumRequestRecordData(
                                            email: currentUserEmail,
                                            requested: true,
                                          ));
                                      logFirebaseEvent(
                                          'ButtonD_show_snack_bar');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'REQUEST SENT',
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Luckiest Guy',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 6000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .textColor,
                                        ),
                                      );
                                    }
                                  },
                                  text: () {
                                    if (FFAppState().requestPremium == true) {
                                      return 'Cancel Request';
                                    } else if (FFAppState().cancelPremium ==
                                        true) {
                                      return 'Request';
                                    } else {
                                      return 'Request';
                                    }
                                  }(),
                                  icon: Icon(
                                    Icons.ios_share,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    height: 65.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: valueOrDefault<Color>(
                                      () {
                                        if (FFAppState().requestPremium ==
                                            true) {
                                          return FlutterFlowTheme.of(context)
                                              .tertiary;
                                        } else if (FFAppState().cancelPremium ==
                                            true) {
                                          return FlutterFlowTheme.of(context)
                                              .customColor1;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .customColor1;
                                        }
                                      }(),
                                      FlutterFlowTheme.of(context).customColor1,
                                    ),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: Color(0xFFE5E7EB),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
