import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'usuarios_model.dart';
export 'usuarios_model.dart';

class UsuariosWidget extends StatefulWidget {
  const UsuariosWidget({Key? key}) : super(key: key);

  @override
  _UsuariosWidgetState createState() => _UsuariosWidgetState();
}

class _UsuariosWidgetState extends State<UsuariosWidget> {
  late UsuariosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsuariosModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsuariosRecord>>(
      stream: queryUsuariosRecord(
        queryBuilder: (usuariosRecord) => usuariosRecord
            .where('activo', isEqualTo: true)
            .where('uid', isEqualTo: currentUserUid),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        List<UsuariosRecord> usuariosUsuariosRecordList = snapshot.data!;
        final usuariosUsuariosRecord = usuariosUsuariosRecordList.isNotEmpty
            ? usuariosUsuariosRecordList.first
            : null;
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 30, 50, 0),
                      child: Text(
                        'Gestionar usuarios',
                        textAlign: TextAlign.center,
                        style:
                        FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Poppins',
                          fontSize: 42,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 50, 50, 50),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Text(
                                      'Usuario actual',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 20, 0),
                                  child: Text(
                                    usuariosUsuariosRecord!.nombre!,
                                    style:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: FaIcon(
                                    FontAwesomeIcons.pen,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 30,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed(
                                      'editar_usuario',
                                      queryParams: {
                                        'referenceUsuario': serializeParam(
                                          usuariosUsuariosRecord!.reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Text(
                                      'Usuarios',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          StreamBuilder<List<UsuariosRecord>>(
                            stream: queryUsuariosRecord(
                              queryBuilder: (usuariosRecord) => usuariosRecord
                                  .where('uid', isEqualTo: currentUserUid)
                                  .where('activo', isEqualTo: false)
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
                                      color:
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                );
                              }
                              List<UsuariosRecord> listViewUsuariosRecordList =
                              snapshot.data!;
                              return ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewUsuariosRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewUsuariosRecord =
                                  listViewUsuariosRecordList[listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 0, 20, 0),
                                          child: Text(
                                            listViewUsuariosRecord.nombre!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          borderWidth: 1,
                                          buttonSize: 60,
                                          icon: FaIcon(
                                            FontAwesomeIcons.pen,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 30,
                                          ),
                                          onPressed: () async {
                                            context.pushNamed(
                                              'editar_usuario',
                                              queryParams: {
                                                'referenceUsuario':
                                                serializeParam(
                                                  listViewUsuariosRecord
                                                      .reference,
                                                  ParamType.DocumentReference,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          borderWidth: 1,
                                          buttonSize: 60,
                                          icon: Icon(
                                            Icons.compare_arrows,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 30,
                                          ),
                                          onPressed: () async {
                                            final usuariosUpdateData1 =
                                            createUsuariosRecordData(
                                              activo: true,
                                            );
                                            await listViewUsuariosRecord
                                                .reference
                                                .update(usuariosUpdateData1);

                                            final usuariosUpdateData2 =
                                            createUsuariosRecordData(
                                              activo: false,
                                            );
                                            await usuariosUsuariosRecord!
                                                .reference
                                                .update(usuariosUpdateData2);
                                          },
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          borderWidth: 1,
                                          buttonSize: 50,
                                          icon: Icon(
                                            Icons.cancel,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 30,
                                          ),
                                          onPressed: () async {
                                            await listViewUsuariosRecord
                                                .reference
                                                .delete();
                                          },
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(100, 0, 100, 0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 100,
                              borderWidth: 1,
                              buttonSize: 60,
                              fillColor: FlutterFlowTheme.of(context).logoAzul,
                              icon: Icon(
                                Icons.add,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                size: 30,
                              ),
                              onPressed: () async {
                                // IrAnadirDispositivos

                                context.pushNamed('nuevo_usuario');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
