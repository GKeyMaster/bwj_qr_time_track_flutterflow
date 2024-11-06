import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().token != '') {
        _model.authCheckResult = await AuthCheckCall.call(
          token: FFAppState().token,
        );

        if (AuthCheckCall.status(
              (_model.authCheckResult?.jsonBody ?? ''),
            ) ==
            'success') {
          if ((FFAppState().role == 'Worker') &&
              (AuthCheckCall.message(
                    (_model.authCheckResult?.jsonBody ?? ''),
                  ) ==
                  'JobStarted')) {
            FFAppState().jobNumber = AuthCheckCall.jobNumber(
              (_model.authCheckResult?.jsonBody ?? ''),
            )!;
            FFAppState().tool = AuthCheckCall.tool(
              (_model.authCheckResult?.jsonBody ?? ''),
            )!;

            context.pushNamed('StopPage');
          } else {
            context.pushNamed('ScanPage');
          }
        } else {
          context.pushNamed('IndexPage');
        }
      } else {
        context.pushNamed('IndexPage');
      }
    });
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
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/icon.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(150.0, 0.0, 150.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Animation_-_1730869583328.gif',
                    fit: BoxFit.scaleDown,
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
