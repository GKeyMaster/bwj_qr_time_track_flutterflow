import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'start_page_model.dart';
export 'start_page_model.dart';

class StartPageWidget extends StatefulWidget {
  const StartPageWidget({super.key});

  @override
  State<StartPageWidget> createState() => _StartPageWidgetState();
}

class _StartPageWidgetState extends State<StartPageWidget> {
  late StartPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StartPageModel());

    _model.textController ??=
        TextEditingController(text: FFAppState().jobNumber);
    _model.textFieldFocusNode ??= FocusNode();
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
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
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
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0),
                child: FlutterFlowDropDown<String>(
                  controller: _model.toolValueController ??=
                      FormFieldController<String>(null),
                  options: FFAppState().tools,
                  onChanged: (val) =>
                      safeSetState(() => _model.toolValue = val),
                  width: 200.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: const Color(0xFFDED7D7),
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                      ),
                  hintText: 'Select a tool...',
                  icon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Color(0xFFDED7D7),
                    size: 36.0,
                  ),
                  fillColor: const Color(0xFF2A2A2A),
                  elevation: 2.0,
                  borderColor: const Color(0xFFA1A1A1),
                  borderWidth: 1.0,
                  borderRadius: 8.0,
                  margin: const EdgeInsetsDirectional.fromSTEB(40.0, 3.0, 20.0, 3.0),
                  hidesUnderline: true,
                  isOverButton: false,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 20.0, 15.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (_model.toolValue != null && _model.toolValue != '') {
                      FFAppState().tool = _model.toolValue!;
                      await Future.wait([
                        Future(() async {
                          _model.apiResultagv = await StartCall.call(
                            token: FFAppState().token,
                            jobNumber: FFAppState().jobNumber,
                            tool: FFAppState().tool,
                          );
                        }),
                        Future(() async {
                          FFAppState().startTime = getCurrentTimestamp;
                          FFAppState().stopTime = getCurrentTimestamp;
                          FFAppState().timespan = 0;
                          FFAppState().isTimerPaused = false;

                          context.pushNamed('StopPage');
                        }),
                      ]);
                    }

                    safeSetState(() {});
                  },
                  text: 'START',
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('ScanPage');
                  },
                  text: 'RESCAN',
                  options: FFButtonOptions(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 20.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xA658F043),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
            ]
                .addToStart(const SizedBox(height: 50.0))
                .addToEnd(const SizedBox(height: 250.0)),
          ),
        ),
      ),
    );
  }
}
