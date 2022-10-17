import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../components/loading_animation_f_s_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
  NotionCredentialsRecord? notionCredentialOutput;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() => FFAppState().fetchingDBNames = true);
      apiResult = await NotionTokenCall.call(
        code: widget.code,
      );
      if (NotionTokenCall.accessToken(
                (apiResult?.jsonBody ?? ''),
              ) !=
              null
          ? true
          : true) {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('YES'),
              content: Text(NotionTokenCall.accessToken(
                (apiResult?.jsonBody ?? ''),
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

        final notionCredentialsCreateData = createNotionCredentialsRecordData(
          botId: NotionTokenCall.botId(
            (apiResult?.jsonBody ?? ''),
          ).toString(),
          accessToken: NotionTokenCall.accessToken(
            (apiResult?.jsonBody ?? ''),
          ).toString(),
        );
        var notionCredentialsRecordReference =
            NotionCredentialsRecord.collection.doc();
        await notionCredentialsRecordReference.set(notionCredentialsCreateData);
        notionCredentialOutput = NotionCredentialsRecord.getDocumentFromData(
            notionCredentialsCreateData, notionCredentialsRecordReference);
        setState(() => FFAppState().fetchingDBNames = true);
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('NOOO'),
              content: Text(getJsonField(
                (apiResult?.jsonBody ?? ''),
                r'''$.error''',
              ).toString()),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Get Out'),
                ),
              ],
            );
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
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'Add',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Visibility(
            visible: !FFAppState().fetchingDBNames,
            child: LoadingAnimationFSWidget(),
          ),
        ),
      ),
    );
  }
}
