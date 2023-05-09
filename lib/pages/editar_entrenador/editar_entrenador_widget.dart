import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'editar_entrenador_model.dart';
export 'editar_entrenador_model.dart';

class EditarEntrenadorWidget extends StatefulWidget {
  const EditarEntrenadorWidget({
    Key? key,
    this.referenciaEntrenador,
  }) : super(key: key);

  final DocumentReference? referenciaEntrenador;

  @override
  _EditarEntrenadorWidgetState createState() => _EditarEntrenadorWidgetState();
}

class _EditarEntrenadorWidgetState extends State<EditarEntrenadorWidget> {
  late EditarEntrenadorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditarEntrenadorModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<EntrenadoresRecord>(
      stream: EntrenadoresRecord.getDocument(widget.referenciaEntrenador!),
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
        final editarEntrenadorEntrenadoresRecord = snapshot.data!;
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
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                      child: Text(
                        'Editar entrenador',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).headlineLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 50, 50, 50),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Nombre',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryText,
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _model.textController ??=
                                        TextEditingController(
                                          text: editarEntrenadorEntrenadoresRecord
                                              .nombre,
                                        ),
                                    onChanged: (event) {
                                      setState(() {});
                                    },
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Introduce tu nombre',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      suffixIcon: FaIcon(
                                        FontAwesomeIcons.pen,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        size: 30,
                                      ),
                                    ),
                                    style:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: FlutterFlowTheme.of(context).accent4,
                          ),
                          FFButtonWidget(
                            onPressed: _model.textController.text == null ||
                                _model.textController.text == ''
                                ? null
                                : () async {
                              final entrenadoresUpdateData =
                              createEntrenadoresRecordData(
                                nombre: _model.textController.text,
                              );
                              await widget.referenciaEntrenador!
                                  .update(entrenadoresUpdateData);
                              context.safePop();
                            },
                            text: 'Guardar',
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              iconPadding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              color: Color(0xFF393939),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                              disabledColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              disabledTextColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
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
