import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'stop_page_model.dart';
export 'stop_page_model.dart';

class StopPageWidget extends StatefulWidget {
  const StopPageWidget({super.key});

  @override
  State<StopPageWidget> createState() => _StopPageWidgetState();
}

class _StopPageWidgetState extends State<StopPageWidget> {
  late StopPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StopPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().timespan != 0) {
        if (FFAppState().isTimerPaused == true) {
          _model.timerController.timer.setPresetTime(
            mSec: FFAppState().timespan,
            add: false,
          );
          _model.timerController.onResetTimer();
        } else {
          _model.timerController.timer.setPresetTime(
            mSec: functions.getTimespan(
                FFAppState().stopTime!, FFAppState().timespan),
            add: false,
          );
          _model.timerController.onResetTimer();

          _model.timerController.onStartTimer();
        }
      } else {
        _model.timerController.onStartTimer();
        FFAppState().timespan = 1;
        safeSetState(() {});
      }
    });

    _model.textController1 ??= TextEditingController(
        text: valueOrDefault<String>(
      FFAppState().jobNumber,
      'DC122001',
    ));
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController(text: FFAppState().tool);
    _model.textFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.sizeOf(context).height * 0.2),
          child: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            actions: const [],
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(50.0, 60.0, 50.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      FFAppState().username,
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Inter Tight',
                                color: const Color(0xFF222222),
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                              ),
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0),
                child: SizedBox(
                  width: 200.0,
                  child: TextFormField(
                    controller: _model.textController1,
                    focusNode: _model.textFieldFocusNode1,
                    autofocus: false,
                    readOnly: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                              ),
                      hintText: 'JOB NUMBER',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFA1A1A1),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFCCCCCC),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                        ),
                    textAlign: TextAlign.center,
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator:
                        _model.textController1Validator.asValidator(context),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0),
                child: SizedBox(
                  width: 200.0,
                  child: TextFormField(
                    controller: _model.textController2,
                    focusNode: _model.textFieldFocusNode2,
                    autofocus: false,
                    readOnly: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                color: const Color(0xFFDED7D7),
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                              ),
                      hintText: 'TOOL',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                color: const Color(0xFFDED7D7),
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFA1A1A1),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFCCCCCC),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      filled: true,
                      fillColor: const Color(0xFF2A2A2A),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFFDED7D7),
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                        ),
                    textAlign: TextAlign.center,
                    cursorColor: const Color(0xFFFAFAFA),
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                ),
              ),
              FlutterFlowTimer(
                initialTime: _model.timerInitialTimeMs,
                getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                  value,
                  hours: false,
                  milliSecond: false,
                ),
                controller: _model.timerController,
                updateStateInterval: const Duration(milliseconds: 1000),
                onChanged: (value, displayTime, shouldUpdate) {
                  _model.timerMilliseconds = value;
                  _model.timerValue = displayTime;
                  if (shouldUpdate) safeSetState(() {});
                },
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Oswald',
                      color: const Color(0xFF3E3E3E),
                      fontSize: 112.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              if (FFAppState().isTimerPaused == false)
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 15.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.timerController.onStopTimer();
                      FFAppState().timespan = _model.timerMilliseconds;
                      FFAppState().isTimerPaused = true;
                    },
                    text: 'PAUSE',
                    options: FFButtonOptions(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 20.0, 16.0, 20.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xA67E7E7E),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                              ),
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(8.0),
                      hoverColor: const Color(0xA65A5A5A),
                    ),
                  ),
                ),
              if (FFAppState().isTimerPaused == true)
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 15.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.timerController.onStartTimer();
                      FFAppState().isTimerPaused = false;
                      FFAppState().stopTime = getCurrentTimestamp;
                    },
                    text: 'RESUME',
                    options: FFButtonOptions(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 20.0, 16.0, 20.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xA658F043),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                              ),
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(8.0),
                      hoverColor: const Color(0x6C58F043),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Future.wait([
                      Future(() async {
                        context.pushNamed('CommentPage');
                      }),
                      Future(() async {
                        _model.apiResultqn2 = await StopCall.call(
                          token: FFAppState().token,
                          timespan: functions.getMins(_model.timerMilliseconds),
                        );
                      }),
                    ]);

                    safeSetState(() {});
                  },
                  text: 'STOP',
                  options: FFButtonOptions(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 30.0, 16.0, 30.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFFF06E43),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.white,
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                        ),
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(8.0),
                    hoverColor: const Color(0xFFE15729),
                  ),
                ),
              ),
            ]
                .addToStart(const SizedBox(height: 10.0))
                .addToEnd(const SizedBox(height: 100.0)),
          ),
        ),
      ),
    );
  }
}
