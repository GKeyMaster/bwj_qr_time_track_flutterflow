import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'index_page_model.dart';
export 'index_page_model.dart';

class IndexPageWidget extends StatefulWidget {
  const IndexPageWidget({super.key});

  @override
  State<IndexPageWidget> createState() => _IndexPageWidgetState();
}

class _IndexPageWidgetState extends State<IndexPageWidget> {
  late IndexPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndexPageModel());

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
          if ((AuthCheckCall.role(
                    (_model.authCheckResult?.jsonBody ?? ''),
                  ) ==
                  'Worker') &&
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
        }
      }
    });

    _model.userIdTextController ??= TextEditingController();
    _model.userIdFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();
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
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 150.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 0.0, 50.0, 0.0),
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
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: SizedBox(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.userIdTextController,
                                      focusNode: _model.userIdFocusNode,
                                      autofocus: false,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'ID',
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
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFFCCCCCC),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.center,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .userIdTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: SizedBox(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.passwordTextController,
                                      focusNode: _model.passwordFocusNode,
                                      autofocus: false,
                                      textInputAction: TextInputAction.send,
                                      obscureText: !_model.passwordVisibility,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Password',
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
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFFCCCCCC),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                50.0, 0.0, 0.0, 0.0),
                                        suffixIcon: InkWell(
                                          onTap: () => safeSetState(
                                            () => _model.passwordVisibility =
                                                !_model.passwordVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.passwordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            size: 0.0,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.center,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .passwordTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 30.0)),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 70.0, 20.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if ((_model.id != null && _model.id != '') &&
                                      (_model.password != null &&
                                          _model.password != '')) {
                                    _model.loginCallback = await LoginCall.call(
                                      id: _model.userIdTextController.text,
                                      password:
                                          _model.passwordTextController.text,
                                    );

                                    if (LoginCall.status(
                                          (_model.loginCallback?.jsonBody ??
                                              ''),
                                        ) ==
                                        'success') {
                                      FFAppState().token = LoginCall.token(
                                        (_model.loginCallback?.jsonBody ?? ''),
                                      )!;
                                      FFAppState().username =
                                          LoginCall.username(
                                        (_model.loginCallback?.jsonBody ?? ''),
                                      )!;
                                      FFAppState().role = LoginCall.role(
                                        (_model.loginCallback?.jsonBody ?? ''),
                                      )!;
                                      if ((LoginCall.role(
                                                (_model.loginCallback
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              'Worker') &&
                                          (LoginCall.message(
                                                (_model.loginCallback
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              'JobStarted')) {
                                        FFAppState().jobNumber =
                                            LoginCall.jobNumber(
                                          (_model.loginCallback?.jsonBody ??
                                              ''),
                                        )!;
                                        FFAppState().tool = LoginCall.tool(
                                          (_model.loginCallback?.jsonBody ??
                                              ''),
                                        )!;

                                        context.pushNamed('StopPage');
                                      } else {
                                        context.pushNamed('ScanPage');
                                      }
                                    } else {
                                      if (LoginCall.error(
                                            (_model.loginCallback?.jsonBody ??
                                                ''),
                                          ) ==
                                          'Invalid credentials') {
                                        _model.isLoginFailed = true;
                                        _model.errorMsg = 'Invalid credentials';
                                        safeSetState(() {});
                                      } else {
                                        _model.isLoginFailed = true;
                                        _model.errorMsg =
                                            'Login Failed. Please check out the input values and try again.';
                                        safeSetState(() {});
                                      }
                                    }
                                  } else {
                                    _model.isLoginFailed = true;
                                    _model.errorMsg =
                                        'Please fill in the username and password';
                                    safeSetState(() {});
                                  }

                                  safeSetState(() {});
                                },
                                text: 'LOGIN',
                                options: FFButtonOptions(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 25.0, 16.0, 25.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFFF06E43),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
