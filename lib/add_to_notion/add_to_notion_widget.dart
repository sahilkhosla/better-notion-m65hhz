import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/drawer_with_links_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToNotionWidget extends StatefulWidget {
  const AddToNotionWidget({Key? key}) : super(key: key);

  @override
  _AddToNotionWidgetState createState() => _AddToNotionWidgetState();
}

class _AddToNotionWidgetState extends State<AddToNotionWidget> {
  String? dropDownValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<NotionCredentialsRecord>>(
      stream: queryNotionCredentialsRecord(
        queryBuilder: (notionCredentialsRecord) => notionCredentialsRecord
            .where('ownerUserEmail', isEqualTo: currentUserEmail),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: SpinKitFadingCube(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 40,
              ),
            ),
          );
        }
        List<NotionCredentialsRecord> addToNotionNotionCredentialsRecordList =
            snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final addToNotionNotionCredentialsRecord =
            addToNotionNotionCredentialsRecordList.isNotEmpty
                ? addToNotionNotionCredentialsRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          drawer: Drawer(
            elevation: 16,
            child: DrawerWithLinksWidget(),
          ),
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
              onPressed: () async {
                scaffoldKey.currentState!.openDrawer();
              },
            ),
            title: Text(
              'Add To Notion',
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: FlutterFlowDropDown(
                      options: FFAppState().dbNames.toList(),
                      onChanged: (val) async {
                        setState(() => dropDownValue = val);
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              content: Text(functions.getDBId(dropDownValue!,
                                  FFAppState().dbMetaData.toList())!),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      width: 180,
                      height: 50,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                      hintText: 'Please select...',
                      fillColor: Colors.white,
                      elevation: 2,
                      borderColor: Colors.transparent,
                      borderWidth: 0,
                      borderRadius: 0,
                      margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                      hidesUnderline: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
