import '../backend/api_requests/api_calls.dart';
import '../components/loading_animation_f_s_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class DBListWidget extends StatefulWidget {
  const DBListWidget({
    Key? key,
    this.code,
  }) : super(key: key);

  final String? code;

  @override
  _DBListWidgetState createState() => _DBListWidgetState();
}

class _DBListWidgetState extends State<DBListWidget> {
  ApiCallResponse? apiResult;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // fetchingDBMessage
      setState(() => FFAppState().statusMessage = 'Fetching Databases...');
      apiResult = await NotionTokenCall.call(
        code: widget.code,
      );
      if (NotionTokenCall.accessToken(
                (apiResult?.jsonBody ?? ''),
              ) !=
              null
          ? true
          : true) {
        // finalizingMessage
        setState(() => FFAppState().statusMessage = 'Finalizing...');
        // setAccessToken
        setState(() => FFAppState().accessToken = NotionTokenCall.accessToken(
              (apiResult?.jsonBody ?? ''),
            ).toString());

        context.goNamed(
          'AddToNotion',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
            ),
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: LoadingAnimationFSWidget(),
        ),
      ),
    );
  }
}
