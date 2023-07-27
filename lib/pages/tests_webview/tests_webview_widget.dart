import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tests_webview_model.dart';
export 'tests_webview_model.dart';

class TestsWebviewWidget extends StatefulWidget {
  const TestsWebviewWidget({Key? key}) : super(key: key);

  @override
  _TestsWebviewWidgetState createState() => _TestsWebviewWidgetState();
}

class _TestsWebviewWidgetState extends State<TestsWebviewWidget> {
  late TestsWebviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestsWebviewModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'TestsWebview'});
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
          backgroundColor: Color(0xFFF1743E),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryBackground,
              size: 30.0,
            ),
            onPressed: () async {
              logFirebaseEvent('TESTS_WEBVIEW_arrow_back_rounded_ICN_ON_');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: Text(
            'Your Assessment',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Luckiest Guy',
                  color: Colors.white,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: FlutterFlowWebView(
            content:
                'https://c880-41-207-252-122.ngrok-free.app/assessments/test/${currentUserUid}',
            bypass: false,
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            verticalScroll: false,
            horizontalScroll: true,
          ),
        ),
      ),
    );
  }
}
