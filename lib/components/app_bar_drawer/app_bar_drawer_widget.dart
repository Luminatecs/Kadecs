import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'app_bar_drawer_model.dart';
export 'app_bar_drawer_model.dart';

class AppBarDrawerWidget extends StatefulWidget {
  const AppBarDrawerWidget({Key? key}) : super(key: key);

  @override
  _AppBarDrawerWidgetState createState() => _AppBarDrawerWidgetState();
}

class _AppBarDrawerWidgetState extends State<AppBarDrawerWidget> {
  late AppBarDrawerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppBarDrawerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
      ),
      child: FlutterFlowIconButton(
        borderColor: Color(0x00616161),
        borderRadius: 20.0,
        borderWidth: 1.0,
        buttonSize: 40.0,
        fillColor: Color(0x00616161),
        icon: Icon(
          Icons.dehaze_rounded,
          color: FlutterFlowTheme.of(context).primaryText,
          size: 24.0,
        ),
        onPressed: () async {
          logFirebaseEvent('APP_BAR_DRAWER_dehaze_rounded_ICN_ON_TAP');
          logFirebaseEvent('IconButton_drawer');
          Scaffold.of(context).openDrawer();
        },
      ),
    );
  }
}
