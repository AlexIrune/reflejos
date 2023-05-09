import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'programa_model.dart';
export 'programa_model.dart';

class ProgramaWidget extends StatefulWidget {
  const ProgramaWidget({
    Key? key,
    this.referenciaPrograma,
  }) : super(key: key);

  final DocumentReference? referenciaPrograma;

  @override
  _ProgramaWidgetState createState() => _ProgramaWidgetState();
}

class _ProgramaWidgetState extends State<ProgramaWidget> {
  late ProgramaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgramaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ProgramasRecord>(
      stream: ProgramasRecord.getDocument(widget.referenciaPrograma!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        final programaProgramasRecord = snapshot.data!;
        _model.colorsPicked ??= List.generate(programaProgramasRecord.dispositivos!,
                (index) => Color.fromARGB(1, 118, 135, 144));
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
                width: 100.0,
                height: 45.0,
                fit: BoxFit.cover,
              ),
              actions: [],
              centerTitle: true,
              elevation: 4.0,
            ),
            body: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                    EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                    child: Text(
                      programaProgramasRecord.nombre!,
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Poppins',
                            fontSize: 40.0,
                          ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: Text(
                                    'Entrenador:',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                                StreamBuilder<List<EntrenadoresRecord>>(
                                  stream: _model.obtenerEntrenadorActivo(
                                    uniqueQueryKey: 'entrenadorActivo',
                                    overrideCache: true,
                                    requestFn: () => queryEntrenadoresRecord(
                                      queryBuilder: (entrenadoresRecord) =>
                                          entrenadoresRecord
                                              .where('activo', isEqualTo: true)
                                              .where('uid',
                                                  isEqualTo: currentUserUid),
                                      singleRecord: true,
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      );
                                    }
                                    List<EntrenadoresRecord>
                                        textEntrenadoresRecordList =
                                        snapshot.data!;
                                    // Return an empty Container when the item does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final textEntrenadoresRecord =
                                        textEntrenadoresRecordList.isNotEmpty
                                            ? textEntrenadoresRecordList.first
                                            : null;
                                    return Text(
                                      textEntrenadoresRecord!.nombre!,
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: Text(
                                    'Usuario:',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                                StreamBuilder<List<UsuariosRecord>>(
                                  stream: _model.obtenerUsuarioActivo(
                                    uniqueQueryKey: 'usuarioActivo',
                                    overrideCache: true,
                                    requestFn: () => queryUsuariosRecord(
                                      queryBuilder: (usuariosRecord) =>
                                          usuariosRecord
                                              .where('activo', isEqualTo: true)
                                              .where('uid',
                                                  isEqualTo: currentUserUid),
                                      singleRecord: true,
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      );
                                    }
                                    List<UsuariosRecord>
                                        textUsuariosRecordList = snapshot.data!;
                                    // Return an empty Container when the item does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final textUsuariosRecord =
                                        textUsuariosRecordList.isNotEmpty
                                            ? textUsuariosRecordList.first
                                            : null;
                                    return Text(
                                      textUsuariosRecord!.nombre!,
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    );
                                  },
                                ),
                              ],
                            ),
                            Column(
                              children: List.generate(
                                  programaProgramasRecord.dispositivos!,
                                      (index) => Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Dispositivo ${index + 1}',
                                                        style:
                                                        FlutterFlowTheme.of(context)
                                                            .bodyMedium,
                                                      ),
                                                      InkWell(
                                                        splashColor: Colors.transparent,
                                                        focusColor: Colors.transparent,
                                                        hoverColor: Colors.transparent,
                                                        highlightColor:
                                                        Colors.transparent,
                                                        onTap: () async {
                                                          final _colorPickedColor =
                                                          await showFFColorPicker(
                                                            context,
                                                            currentColor:
                                                            _model.colorsPicked?[index] ??=
                                                            _model.colorsPicked?[index],
                                                            showRecentColors: true,
                                                            allowOpacity: false,
                                                            textColor:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .primaryText,
                                                            secondaryTextColor:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .secondaryText,
                                                            backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .primaryBackground,
                                                            primaryButtonBackgroundColor:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .primary,
                                                            primaryButtonTextColor:
                                                            Colors.white,
                                                            primaryButtonBorderColor:
                                                            Colors.transparent,
                                                            displayAsBottomSheet:
                                                            isMobileWidth(context),
                                                          );

                                                          if (_colorPickedColor != null) {
                                                            setState(() => _model
                                                                .colorsPicked?[index] =
                                                                _colorPickedColor
                                                                    .withOpacity(1.0));
                                                          }
                                                        },
                                                        child: Container(
                                                          width: 30.0,
                                                          height: 30.0,
                                                          decoration: BoxDecoration(
                                                            color: _model.colorsPicked?[index],
                                                            shape: BoxShape.circle,
                                                            border: Border.all(
                                                              color: FlutterFlowTheme.of(
                                                                  context)
                                                                  .secondaryText,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child:
                                        StreamBuilder<List<EntrenadoresRecord>>(
                                      stream: _model.obtenerEntrenadorActivo(
                                        requestFn: () =>
                                            queryEntrenadoresRecord(
                                          queryBuilder: (entrenadoresRecord) =>
                                              entrenadoresRecord
                                                  .where('activo',
                                                      isEqualTo: true)
                                                  .where('uid',
                                                      isEqualTo:
                                                          currentUserUid),
                                          singleRecord: true,
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                          );
                                        }
                                        List<EntrenadoresRecord>
                                            textEntrenadoresRecordList =
                                            snapshot.data!;
                                        final textEntrenadoresRecord =
                                            textEntrenadoresRecordList
                                                    .isNotEmpty
                                                ? textEntrenadoresRecordList
                                                    .first
                                                : null;
                                        return Text(
                                          !(textEntrenadoresRecord != null)
                                              ? 'NO HAY ENTRENADO ACTIVO'
                                              : '',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: StreamBuilder<List<UsuariosRecord>>(
                                      stream: _model.obtenerUsuarioActivo(
                                        requestFn: () => queryUsuariosRecord(
                                          queryBuilder: (usuariosRecord) =>
                                              usuariosRecord
                                                  .where('activo',
                                                      isEqualTo: true)
                                                  .where('uid',
                                                      isEqualTo:
                                                          currentUserUid),
                                          singleRecord: true,
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                          );
                                        }
                                        List<UsuariosRecord>
                                            textUsuariosRecordList =
                                            snapshot.data!;
                                        final textUsuariosRecord =
                                            textUsuariosRecordList.isNotEmpty
                                                ? textUsuariosRecordList.first
                                                : null;
                                        return Text(
                                          !(textUsuariosRecord != null)
                                              ? 'NO HAY UN USUARIO ACTIVO'
                                              : '',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 80.0,
                                  disabledIconColor: Color(0xFF393939),
                                  icon: Icon(
                                    Icons.play_arrow_rounded,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 60.0,
                                  ),
                                  onPressed: _model.enCurso == true
                                      ? null
                                      : () async {
                                          setState(() {
                                            _model.enCurso = true;
                                          });
                                        },
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 80.0,
                                  disabledIconColor: Color(0xFF393939),
                                  icon: Icon(
                                    Icons.stop_circle,
                                    color:
                                        FlutterFlowTheme.of(context).logoRojo,
                                    size: 60.0,
                                  ),
                                  onPressed: _model.enCurso == false
                                      ? null
                                      : () async {
                                          setState(() {
                                            _model.enCurso = false;
                                          });
                                        },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
