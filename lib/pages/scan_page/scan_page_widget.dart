import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'scan_page_model.dart';
export 'scan_page_model.dart';

class ScanPageWidget extends StatefulWidget {
  const ScanPageWidget({super.key});

  @override
  State<ScanPageWidget> createState() => _ScanPageWidgetState();
}

class _ScanPageWidgetState extends State<ScanPageWidget> {
  late ScanPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScanPageModel());

    _model.jobNumberTextController ??= TextEditingController();
    _model.jobNumberFocusNode ??= FocusNode();
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
        backgroundColor: const Color(0xFFFDFDFD),
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(50.0, 20.0, 50.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.scaleDown,
                          alignment: const Alignment(0.0, 0.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'Hello, ${FFAppState().username}!',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Inter Tight',
                                color: const Color(0xFF222222),
                                fontSize: 22.0,
                                letterSpacing: 0.0,
                              ),
                        ),
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
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            child: TextFormField(
                              controller: _model.jobNumberTextController,
                              focusNode: _model.jobNumberFocusNode,
                              onFieldSubmitted: (_) async {
                                FFAppState().jobNumber =
                                    _model.jobNumberTextController.text;
                              },
                              autofocus: false,
                              textInputAction: TextInputAction.send,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'JOB NUMBER',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Inter',
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
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 50.0, 0.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              textAlign: TextAlign.center,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.jobNumberTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 50.0,
                              fillColor: const Color(0x004B39EF),
                              hoverIconColor:
                                  FlutterFlowTheme.of(context).secondary,
                              icon: const Icon(
                                Icons.qr_code_scanner,
                                color: Color(0xFF398BEF),
                                size: 30.0,
                              ),
                              onPressed: () async {
                                _model.jobNumber =
                                    await FlutterBarcodeScanner.scanBarcode(
                                  '#C62828', // scanning line color
                                  'Cancel', // cancel button text
                                  true, // whether to show the flash icon
                                  ScanMode.QR,
                                );

                                if (_model.jobNumber != '') {
                                  FFAppState().jobNumber = _model.jobNumber;
                                  _model.scanResult = await ScanCall.call(
                                    jobNumber: FFAppState().jobNumber,
                                    token: FFAppState().token,
                                  );

                                  if ((_model.scanResult?.succeeded ?? true)) {
                                    if (FFAppState().role == 'Worker') {
                                      context.pushNamed('StartPage');
                                    } else {
                                      if (FFAppState().role ==
                                          'Factory Manager') {
                                        if (ScanCall.status(
                                              (_model.scanResult?.jsonBody ??
                                                  ''),
                                            ) ==
                                            '\"NEW\"') {
                                          FFAppState().error =
                                              'Oops! The job ${FFAppState().jobNumber} is not started yet.';
                                          safeSetState(() {});

                                          context.pushNamed('ErrorPage');
                                        } else {
                                          context.pushNamed('CheckPage');
                                        }
                                      } else {
                                        if (FFAppState().role ==
                                            'Store Manager') {
                                          if (ScanCall.status(
                                                (_model.scanResult?.jsonBody ??
                                                    ''),
                                              ) ==
                                              'NEW') {
                                            FFAppState().error =
                                                'Oops! The job ${FFAppState().jobNumber} is not started yet.';
                                            safeSetState(() {});

                                            context.pushNamed('ErrorPage');
                                          } else {
                                            if (ScanCall.status(
                                                  (_model.scanResult
                                                          ?.jsonBody ??
                                                      ''),
                                                ) ==
                                                'ON') {
                                              FFAppState().error =
                                                  'Oops! The job ${FFAppState().jobNumber} is not completed yet.';
                                              safeSetState(() {});

                                              context.pushNamed('ErrorPage');
                                            } else {
                                              if (ScanCall.status(
                                                    (_model.scanResult
                                                            ?.jsonBody ??
                                                        ''),
                                                  ) ==
                                                  'COMPLETED') {
                                                FFAppState().error =
                                                    'Oops! The job ${FFAppState().jobNumber} is not approved by the Factory Manager yet.';
                                                safeSetState(() {});

                                                context.pushNamed('ErrorPage');
                                              } else {
                                                context
                                                    .pushNamed('DeliverPage');
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }

                                safeSetState(() {});
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 70.0, 20.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (_model.jobNumberTextController.text != '') {
                      FFAppState().jobNumber =
                          _model.jobNumberTextController.text;
                      safeSetState(() {});
                      _model.scanResult1 = await ScanCall.call(
                        jobNumber: FFAppState().jobNumber,
                        token: FFAppState().token,
                      );

                      if ((_model.scanResult1?.succeeded ?? true)) {
                        if (FFAppState().role == 'Worker') {
                          FFAppState().tools = ScanCall.tools(
                            (_model.scanResult1?.jsonBody ?? ''),
                          )!
                              .toList()
                              .cast<String>();
                          safeSetState(() {});

                          context.pushNamed('StartPage');
                        } else {
                          if (FFAppState().role == 'Factory Manager') {
                            if (ScanCall.status(
                                  (_model.scanResult?.jsonBody ?? ''),
                                ) ==
                                '\"NEW\"') {
                              FFAppState().error =
                                  'Oops! The job ${FFAppState().jobNumber} is not started yet.';
                              safeSetState(() {});

                              context.pushNamed('ErrorPage');
                            } else {
                              context.pushNamed('CheckPage');
                            }
                          } else {
                            if (FFAppState().role == 'Store Manager') {
                              if (ScanCall.status(
                                    (_model.scanResult?.jsonBody ?? ''),
                                  ) ==
                                  'NEW') {
                                FFAppState().error =
                                    'Oops! The job ${FFAppState().jobNumber} is not started yet.';
                                safeSetState(() {});

                                context.pushNamed('ErrorPage');
                              } else {
                                if (ScanCall.status(
                                      (_model.scanResult?.jsonBody ?? ''),
                                    ) ==
                                    'ON') {
                                  FFAppState().error =
                                      'Oops! The job ${FFAppState().jobNumber} is not completed yet.';
                                  safeSetState(() {});

                                  context.pushNamed('ErrorPage');
                                } else {
                                  if (ScanCall.status(
                                        (_model.scanResult?.jsonBody ?? ''),
                                      ) ==
                                      'COMPLETED') {
                                    FFAppState().error =
                                        'Oops! The job ${FFAppState().jobNumber} is not approved by the Factory Manager yet.';
                                    safeSetState(() {});

                                    context.pushNamed('ErrorPage');
                                  } else {
                                    context.pushNamed('DeliverPage');
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    safeSetState(() {});
                  },
                  text: 'NEXT',
                  options: FFButtonOptions(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 25.0, 16.0, 25.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFFF06E43),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(8.0),
                    hoverColor: const Color(0xFFE15729),
                  ),
                ),
              ),
            ].addToEnd(const SizedBox(height: 120.0)),
          ),
        ),
      ),
    );
  }
}
