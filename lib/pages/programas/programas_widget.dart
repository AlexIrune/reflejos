import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'programas_model.dart';
export 'programas_model.dart';

class ProgramasWidget extends StatefulWidget {
  const ProgramasWidget({Key? key}) : super(key: key);

  @override
  _ProgramasWidgetState createState() => _ProgramasWidgetState();
}

class _ProgramasWidgetState extends State<ProgramasWidget> {
  late ProgramasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgramasModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF3A4245),
          iconTheme: IconThemeData(color: Color(0xFF768790)),
          automaticallyImplyLeading: true,
          title: Image.asset(
            'assets/images/logo.png',
            width: 100,
            height: 45,
            fit: BoxFit.cover,
          ),
          actions: [],
          centerTitle: true,
          elevation: 4,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Text(
                  'Programas',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).displaySmall,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(50, 50, 50, 50),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                              child: Text(
                                'Tus programas',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            StreamBuilder<List<ProgramasRecord>>(
                              stream: queryProgramasRecord(
                                queryBuilder: (programasRecord) =>
                                    programasRecord
                                        .where('uid', isEqualTo: currentUserUid)
                                        .orderBy('nombre'),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  );
                                }
                                List<ProgramasRecord>
                                listViewProgramasRecordList =
                                snapshot.data!;
                                return ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewProgramasRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewProgramasRecord =
                                    listViewProgramasRecordList[
                                    listViewIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              flex: 3,
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'programa',
                                                    queryParams: {
                                                      'referenciaPrograma':
                                                      serializeParam(
                                                        listViewProgramasRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.min,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Text(
                                                          listViewProgramasRecord
                                                              .nombre!,
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Poppins',
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          children: [
                                                            Icon(
                                                              Icons.person,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .logoAzul,
                                                              size: 24,
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  10,
                                                                  0,
                                                                  0,
                                                                  0),
                                                              child: Text(
                                                                listViewProgramasRecord
                                                                    .participantes!
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Icon(
                                                              Icons.alarm,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .logoAzul,
                                                              size: 24,
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  10,
                                                                  0,
                                                                  0,
                                                                  0),
                                                              child: Text(
                                                                listViewProgramasRecord
                                                                    .tiempoCiclos!
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .wb_twighlight,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .logoAzul,
                                                              size: 24,
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  10,
                                                                  0,
                                                                  0,
                                                                  0),
                                                              child: Text(
                                                                listViewProgramasRecord
                                                                    .dispositivos!
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                    children: [
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                        Colors.transparent,
                                                        borderRadius: 30,
                                                        borderWidth: 1,
                                                        buttonSize: 24,
                                                        icon: FaIcon(
                                                          FontAwesomeIcons.pen,
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .primaryText,
                                                          size: 20,
                                                        ),
                                                        onPressed: () async {
                                                          context.pushNamed(
                                                            'editar_programa',
                                                            queryParams: {
                                                              'referenciaPrograma':
                                                              serializeParam(
                                                                listViewProgramasRecord
                                                                    .reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                        Colors.transparent,
                                                        borderRadius: 30,
                                                        borderWidth: 1,
                                                        buttonSize: 24,
                                                        icon: Icon(
                                                          Icons.cancel,
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .error,
                                                          size: 24,
                                                        ),
                                                        onPressed: () async {
                                                          await listViewProgramasRecord
                                                              .reference
                                                              .delete();
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          thickness: 1,
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(50, 50, 50, 50),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                              child: Text(
                                'Programas predeterminados',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            StreamBuilder<List<ProgramasRecord>>(
                              stream: queryProgramasRecord(
                                queryBuilder: (programasRecord) =>
                                    programasRecord
                                        .where('uid', isEqualTo: '1')
                                        .orderBy('nombre'),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  );
                                }
                                List<ProgramasRecord>
                                listViewProgramasRecordList =
                                snapshot.data!;
                                return ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewProgramasRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewProgramasRecord =
                                    listViewProgramasRecordList[
                                    listViewIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              flex: 3,
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'programa',
                                                    queryParams: {
                                                      'referenciaPrograma':
                                                      serializeParam(
                                                        listViewProgramasRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.min,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Text(
                                                          listViewProgramasRecord
                                                              .nombre!,
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Poppins',
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          children: [
                                                            Icon(
                                                              Icons.person,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .logoAzul,
                                                              size: 24,
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  10,
                                                                  0,
                                                                  0,
                                                                  0),
                                                              child: Text(
                                                                listViewProgramasRecord
                                                                    .participantes!
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Icon(
                                                              Icons.alarm,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .logoAzul,
                                                              size: 24,
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  10,
                                                                  0,
                                                                  0,
                                                                  0),
                                                              child: Text(
                                                                listViewProgramasRecord
                                                                    .tiempoCiclos!
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .wb_twighlight,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .logoAzul,
                                                              size: 24,
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  10,
                                                                  0,
                                                                  0,
                                                                  0),
                                                              child: Text(
                                                                listViewProgramasRecord
                                                                    .dispositivos!
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          thickness: 1,
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ],
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
    );
  }
}
