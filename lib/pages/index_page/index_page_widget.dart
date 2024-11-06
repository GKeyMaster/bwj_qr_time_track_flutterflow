import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 0.0),
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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: SizedBox(
                      width: 200.0,
                      child: TextFormField(
                        controller: _model.userIdTextController,
                        focusNode: _model.userIdFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.userIdTextController',
                          const Duration(milliseconds: 2000),
                          () async {
                            _model.isLoginFailed = false;
                            safeSetState(() {});
                          },
                        ),
                        autofocus: false,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'ID',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: !_model.isLoginFailed
                                  ? const Color(0xFFA1A1A1)
                                  : const Color(0xFFFF5963),
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
                              letterSpacing: 0.0,
                            ),
                        textAlign: TextAlign.center,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.userIdTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: SizedBox(
                      width: 200.0,
                      child: TextFormField(
                        controller: _model.passwordTextController,
                        focusNode: _model.passwordFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.passwordTextController',
                          const Duration(milliseconds: 2000),
                          () async {
                            _model.isLoginFailed = false;
                            safeSetState(() {});
                          },
                        ),
                        autofocus: false,
                        textInputAction: TextInputAction.send,
                        obscureText: !_model.passwordVisibility,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Password',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: !_model.isLoginFailed
                                  ? const Color(0xFFA1A1A1)
                                  : const Color(0xFFFF5963),
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
                          contentPadding: const EdgeInsetsDirectional.fromSTEB(
                              50.0, 0.0, 0.0, 0.0),
                          suffixIcon: InkWell(
                            onTap: () => safeSetState(
                              () => _model.passwordVisibility =
                                  !_model.passwordVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              _model.passwordVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              size: 0.0,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        textAlign: TextAlign.center,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.passwordTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ].divide(const SizedBox(height: 30.0)),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                child: Text(
                  _model.isLoginFailed
                      ? valueOrDefault<String>(
                          _model.errorMsg,
                          'Please fill in username and password',
                        )
                      : ' ',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: const Color(0xFFFF5963),
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 20.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    if ((_model.userIdTextController.text != '') &&
                        (_model.passwordTextController.text != '')) {
                      _model.isLoginFailed = false;
                      _model.errorMsg = ' ';
                      _model.id = _model.userIdTextController.text;
                      _model.password = _model.passwordTextController.text;
                      safeSetState(() {});
                      _model.loginCallback = await LoginCall.call(
                        id: _model.id,
                        password: _model.password,
                      );

                      if (LoginCall.status(
                            (_model.loginCallback?.jsonBody ?? ''),
                          ) ==
                          'success') {
                        FFAppState().token = LoginCall.token(
                          (_model.loginCallback?.jsonBody ?? ''),
                        )!;
                        FFAppState().username = LoginCall.username(
                          (_model.loginCallback?.jsonBody ?? ''),
                        )!;
                        FFAppState().role = LoginCall.role(
                          (_model.loginCallback?.jsonBody ?? ''),
                        )!;
                        if ((LoginCall.role(
                                  (_model.loginCallback?.jsonBody ?? ''),
                                ) ==
                                'Worker') &&
                            (LoginCall.message(
                                  (_model.loginCallback?.jsonBody ?? ''),
                                ) ==
                                'JobStarted')) {
                          FFAppState().jobNumber = LoginCall.jobNumber(
                            (_model.loginCallback?.jsonBody ?? ''),
                          )!;
                          FFAppState().tool = LoginCall.tool(
                            (_model.loginCallback?.jsonBody ?? ''),
                          )!;

                          context.pushNamed('StopPage');
                        } else {
                          context.pushNamed('ScanPage');
                        }
                      } else {
                        if (LoginCall.error(
                              (_model.loginCallback?.jsonBody ?? ''),
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
            ].addToEnd(const SizedBox(height: 200.0)),
          ),
        ),
      ),
    );
  }
}
