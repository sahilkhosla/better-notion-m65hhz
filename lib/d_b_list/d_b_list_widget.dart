import '../backend/api_requests/api_calls.dart';
import '../components/loading_animation_f_s_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
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
  ApiCallResponse? databaseApiResult;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // fetchingDBMessage
      setState(() => FFAppState().statusMessage = 'Syncing Table Names...');
      await Future.delayed(const Duration(milliseconds: 1000));
      apiResult = await NotionTokenCall.call(
        code: widget.code,
      );
      if (NotionTokenCall.accessToken(
                (apiResult?.jsonBody ?? ''),
              ) !=
              null
          ? true
          : true) {
        // syncingTableNames
        setState(() => FFAppState().statusMessage = 'Finalizing...');
        await Future.delayed(const Duration(milliseconds: 1000));
        // setAccessToken
        setState(() => FFAppState().accessToken = NotionTokenCall.accessToken(
              (apiResult?.jsonBody ?? ''),
            ).toString());
        databaseApiResult = await ListDatabasesCall.call(
          accessTokenFromLocalStorage:
              'secret_btGP8ChzQewjpc8gAjpaFyLKIYOkrvKcagzE3tSif4E',
        );
        if ((databaseApiResult?.succeeded ?? true)) {
          setState(() => FFAppState().dbNames = (ListDatabasesCall.dbNames(
                (databaseApiResult?.jsonBody ?? ''),
              ) as List)
                  .map<String>((s) => s.toString())
                  .toList()
                  .toList());
          setState(() => FFAppState().statusMessage = 'Storing Metadata...');
          setState(() => FFAppState().dbMetaData = functions
              .getDBMetaData(ListDatabasesCall.dbSearchResults(
                (databaseApiResult?.jsonBody ?? ''),
              ).toList())!
              .toList());
          setState(() => FFAppState().statusMessage = 'Here we go...');

          context.pushNamed(
            'AddToNotion',
            extra: <String, dynamic>{
              kTransitionInfoKey: TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
              ),
            },
          );
        } else {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                content: Text(getJsonField(
                  (databaseApiResult?.jsonBody ?? ''),
                  r'''$.message''',
                ).toString()),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: Text('Ok'),
                  ),
                ],
              );
            },
          );
        }
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
