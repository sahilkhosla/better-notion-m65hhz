import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerWithLinksWidget extends StatefulWidget {
  const DrawerWithLinksWidget({Key? key}) : super(key: key);

  @override
  _DrawerWithLinksWidgetState createState() => _DrawerWithLinksWidgetState();
}

class _DrawerWithLinksWidgetState extends State<DrawerWithLinksWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Text(
                'Hello World',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).title1,
              ),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: InkWell(
                onTap: () async {
                  context.pushNamed(
                    'InitConnection',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                      ),
                    },
                  );
                },
                child: Text(
                  'Init Conn',
                  style: FlutterFlowTheme.of(context).title3,
                ),
              ),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: InkWell(
                onTap: () async {
                  context.pushNamed(
                    'LandingPage',
                    params: {
                      'code': serializeParam(
                        currentUserEmail,
                        ParamType.String,
                      ),
                    }.withoutNulls,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                      ),
                    },
                  );
                },
                child: Text(
                  'Landing Page',
                  style: FlutterFlowTheme.of(context).title3,
                ),
              ),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              onTap: () async {
                context.pushNamed('AddToNotion');
              },
              child: Text(
                'Add To Notion',
                style: FlutterFlowTheme.of(context).title3,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
