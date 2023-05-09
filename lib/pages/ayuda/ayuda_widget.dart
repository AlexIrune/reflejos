import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'ayuda_model.dart';
export 'ayuda_model.dart';

class AyudaWidget extends StatefulWidget {
  const AyudaWidget({Key? key}) : super(key: key);

  @override
  _AyudaWidgetState createState() => _AyudaWidgetState();
}

class _AyudaWidgetState extends State<AyudaWidget> {
  late AyudaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AyudaModel());
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Text(
                  'FAQs - Ayuda',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 50, 50, 50),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '¿Como vincular un dispositivo?',
                              style: FlutterFlowTheme.of(context).titleMedium,
                            ),
                            Text(
                              'Desde el menú principal, seleccionar “Dispositivos”. Pulse el botón +. Pulse el botón + en uno de los dispositivos que aparecen en la lista. El dispositivo emitirá luz y sonido. Pase la mano por el sensor para completar la vinculación.',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '¿Cuantos dispositibos puesdo vincular?',
                              style: FlutterFlowTheme.of(context).titleMedium,
                            ),
                            Text(
                              'Se pueden vincular hasta un máximo de 4 dispositivos.',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '¿Como cambiar el nombre de un usuario?',
                              style: FlutterFlowTheme.of(context).titleMedium,
                            ),
                            Text(
                              'Debes ir a la pantalla de los usuarios y pulsar sobre lapiz del usuario que quieras cambiar el nombre. Se abrirá una pantalla donde podrás cambiar los datos del usuario.',
                              style: FlutterFlowTheme.of(context).bodyMedium,
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
  }
}
