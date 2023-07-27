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
import 's_h_s_schools_new_model.dart';
export 's_h_s_schools_new_model.dart';

class SHSSchoolsNewWidget extends StatefulWidget {
  const SHSSchoolsNewWidget({Key? key}) : super(key: key);

  @override
  _SHSSchoolsNewWidgetState createState() => _SHSSchoolsNewWidgetState();
}

class _SHSSchoolsNewWidgetState extends State<SHSSchoolsNewWidget> {
  late SHSSchoolsNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SHSSchoolsNewModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'sHSSchoolsNew'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('S_H_S_SCHOOLS_NEW_sHSSchoolsNew_ON_INIT_');
      logFirebaseEvent('sHSSchoolsNew_update_app_state');
      setState(() {
        FFAppState().searchActive = false;
      });
    });

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).tertiary400,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              logFirebaseEvent('S_H_S_SCHOOLS_NEW_arrow_back_rounded_ICN');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: Text(
            'SHS School Search',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Luckiest Guy',
                  color: Colors.white,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: Color(0xFFE7F9FF),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: ExpandableNotifier(
                                  initialExpanded: true,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Filter Schools:',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall,
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 11.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 157.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Wrap(
                                            spacing: 0.0,
                                            runSpacing: 5.0,
                                            alignment:
                                                WrapAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment:
                                                WrapAlignment.spaceEvenly,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .categoryDDValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: ['A', 'B', 'C', 'D'],
                                                onChanged: (val) async {
                                                  setState(() => _model
                                                      .categoryDDValue = val);
                                                  logFirebaseEvent(
                                                      'S_H_S_SCHOOLS_NEW_categoryDD_ON_FORM_WID');
                                                  logFirebaseEvent(
                                                      'categoryDD_update_widget_state');
                                                  setState(() {
                                                    _model.category =
                                                        _model.categoryDDValue!;
                                                  });
                                                  logFirebaseEvent(
                                                      'categoryDD_update_app_state');
                                                  setState(() {
                                                    FFAppState().searchActive =
                                                        true;
                                                  });
                                                },
                                                width: 151.0,
                                                height: 40.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText: 'Category',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary400,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .residencyDDValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: [
                                                  'DAY/BOARDING',
                                                  'DAY'
                                                ],
                                                onChanged: (val) async {
                                                  setState(() => _model
                                                      .residencyDDValue = val);
                                                  logFirebaseEvent(
                                                      'S_H_S_SCHOOLS_NEW_residencyDD_ON_FORM_WI');
                                                  logFirebaseEvent(
                                                      'residencyDD_update_widget_state');
                                                  setState(() {
                                                    _model.residency = _model
                                                        .residencyDDValue!;
                                                  });
                                                  logFirebaseEvent(
                                                      'residencyDD_update_app_state');
                                                  setState(() {
                                                    FFAppState().searchActive =
                                                        true;
                                                  });
                                                },
                                                width: 151.0,
                                                height: 40.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText: 'Residency',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary400,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .genderDDValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: [
                                                  'MALE',
                                                  'FEMALE',
                                                  'MIXED'
                                                ],
                                                onChanged: (val) async {
                                                  setState(() => _model
                                                      .genderDDValue = val);
                                                  logFirebaseEvent(
                                                      'S_H_S_SCHOOLS_NEW_genderDD_ON_FORM_WIDGE');
                                                  logFirebaseEvent(
                                                      'genderDD_update_widget_state');
                                                  setState(() {
                                                    _model.gender =
                                                        _model.genderDDValue!;
                                                  });
                                                  logFirebaseEvent(
                                                      'genderDD_update_app_state');
                                                  setState(() {
                                                    FFAppState().searchActive =
                                                        true;
                                                  });
                                                },
                                                width: 151.0,
                                                height: 40.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText: 'Gender',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary400,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .regionDDValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: [
                                                  'AHAFO',
                                                  'ASHANTI',
                                                  'BONO',
                                                  'BONO EAST',
                                                  'CENTRAL',
                                                  'EASTERN',
                                                  'GREATER ACCRA',
                                                  'NORTH EAST',
                                                  'NORTHERN',
                                                  'OTI',
                                                  'SAVANNAH',
                                                  'UPPER EAST',
                                                  'UPPER WEST',
                                                  'VOLTA',
                                                  'WESTERN'
                                                ],
                                                onChanged: (val) async {
                                                  setState(() => _model
                                                      .regionDDValue = val);
                                                  logFirebaseEvent(
                                                      'S_H_S_SCHOOLS_NEW_regionDD_ON_FORM_WIDGE');
                                                  logFirebaseEvent(
                                                      'regionDD_update_widget_state');
                                                  setState(() {
                                                    _model.region =
                                                        _model.regionDDValue!;
                                                  });
                                                  logFirebaseEvent(
                                                      'regionDD_update_app_state');
                                                  setState(() {
                                                    FFAppState().searchActive =
                                                        true;
                                                  });
                                                },
                                                width: 151.0,
                                                height: 40.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText: 'Region',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary400,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                              ),
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'S_H_S_SCHOOLS_NEW_PAGE_RESET_BTN_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Button_navigate_to');

                                                  context.pushNamed(
                                                    'sHSSchoolsNew',
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .fade,
                                                        duration: Duration(
                                                            milliseconds: 10),
                                                      ),
                                                    },
                                                  );
                                                },
                                                text: 'RESET',
                                                options: FFButtonOptions(
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Quicksand',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: false,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: false,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (!valueOrDefault<bool>(
                        FFAppState().searchActive,
                        false,
                      ))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 12.0, 10.0, 44.0),
                          child: FutureBuilder<List<ShsSchoolsRow>>(
                            future: ShsSchoolsTable().queryRows(
                              queryFn: (q) => q
                                  .eq(
                                    'category',
                                    'A',
                                  )
                                  .order('logo', ascending: true),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 60.0,
                                    height: 60.0,
                                    child: SpinKitFoldingCube(
                                      color: Color(0xFFF8A42D),
                                      size: 60.0,
                                    ),
                                  ),
                                );
                              }
                              List<ShsSchoolsRow> nofilterShsSchoolsRowList =
                                  snapshot.data!;
                              return Wrap(
                                spacing: 8.0,
                                runSpacing: 8.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: List.generate(
                                    nofilterShsSchoolsRowList.length,
                                    (nofilterIndex) {
                                  final nofilterShsSchoolsRow =
                                      nofilterShsSchoolsRowList[nofilterIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'S_H_S_SCHOOLS_NEW_Container_h7hwxbjx_ON_');
                                      logFirebaseEvent('Container_navigate_to');

                                      context.pushNamed(
                                        'schoolDetailNew',
                                        queryParameters: {
                                          'schoolreference': serializeParam(
                                            nofilterShsSchoolsRow,
                                            ParamType.SupabaseRow,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      height: 200.0,
                                      constraints: BoxConstraints(
                                        minWidth: 170.0,
                                        maxWidth: 250.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x230E151B),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 4.0, 4.0, 4.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Image.network(
                                                valueOrDefault<String>(
                                                  nofilterShsSchoolsRow.logo,
                                                  'https://static.thenounproject.com/png/132148-200.png',
                                                ),
                                                width: 200.0,
                                                height: 130.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                nofilterShsSchoolsRow
                                                    .schoolName,
                                                '0',
                                              ),
                                              textAlign: TextAlign.center,
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Quicksand',
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'GES Category:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 4.0, 0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      nofilterShsSchoolsRow
                                                          .category,
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Quicksand',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              );
                            },
                          ),
                        ),
                      if (FFAppState().searchActive)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 12.0, 10.0, 44.0),
                          child: FutureBuilder<List<ShsSchoolsRow>>(
                            future: ShsSchoolsTable().queryRows(
                              queryFn: (q) => q
                                  .eq(
                                    'region',
                                    _model.region,
                                  )
                                  .eq(
                                    'category',
                                    _model.category,
                                  )
                                  .eq(
                                    'gender',
                                    _model.gender,
                                  )
                                  .eq(
                                    'residency',
                                    _model.residency,
                                  ),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 60.0,
                                    height: 60.0,
                                    child: SpinKitFoldingCube(
                                      color: Color(0xFFF8A42D),
                                      size: 60.0,
                                    ),
                                  ),
                                );
                              }
                              List<ShsSchoolsRow>
                                  schoolsfilterShsSchoolsRowList =
                                  snapshot.data!;
                              return Wrap(
                                spacing: 8.0,
                                runSpacing: 8.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: List.generate(
                                    schoolsfilterShsSchoolsRowList.length,
                                    (schoolsfilterIndex) {
                                  final schoolsfilterShsSchoolsRow =
                                      schoolsfilterShsSchoolsRowList[
                                          schoolsfilterIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'S_H_S_SCHOOLS_NEW_Container_l54h2qk4_ON_');
                                      logFirebaseEvent('Container_navigate_to');

                                      context.pushNamed(
                                        'schoolDetailNew',
                                        queryParameters: {
                                          'schoolreference': serializeParam(
                                            schoolsfilterShsSchoolsRow,
                                            ParamType.SupabaseRow,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      height: 200.0,
                                      constraints: BoxConstraints(
                                        minWidth: 170.0,
                                        maxWidth: 250.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x230E151B),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 4.0, 4.0, 4.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Image.network(
                                                valueOrDefault<String>(
                                                  schoolsfilterShsSchoolsRow
                                                      .logo,
                                                  'https://static.thenounproject.com/png/132148-200.png',
                                                ),
                                                width: 200.0,
                                                height: 130.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Text(
                                              schoolsfilterShsSchoolsRow
                                                  .schoolName!,
                                              textAlign: TextAlign.center,
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Quicksand',
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'GES Category:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 4.0, 0.0, 0.0),
                                                  child: Text(
                                                    schoolsfilterShsSchoolsRow
                                                        .category!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Quicksand',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              );
                            },
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
