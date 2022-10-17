import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoadingAnimationFSWidget extends StatefulWidget {
  const LoadingAnimationFSWidget({Key? key}) : super(key: key);

  @override
  _LoadingAnimationFSWidgetState createState() =>
      _LoadingAnimationFSWidgetState();
}

class _LoadingAnimationFSWidgetState extends State<LoadingAnimationFSWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.rectangle,
                  ),
                  child: Lottie.network(
                    'https://assets1.lottiefiles.com/private_files/lf30_fup2uejx.json',
                    width: 150,
                    height: 130,
                    fit: BoxFit.fitWidth,
                    animate: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
