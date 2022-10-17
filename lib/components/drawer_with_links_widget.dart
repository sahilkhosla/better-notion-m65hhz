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
                  'Init Connection',
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
                  context.pushNamed('LandingPage');
                },
                child: Text(
                  'Landing Page',
                  style: FlutterFlowTheme.of(context).title3,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
