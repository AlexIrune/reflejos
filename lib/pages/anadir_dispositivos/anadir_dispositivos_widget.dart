import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'anadir_dispositivos_model.dart';
export 'anadir_dispositivos_model.dart';

class AnadirDispositivosWidget extends StatefulWidget {
  const AnadirDispositivosWidget({Key? key}) : super(key: key);

  @override
  _AnadirDispositivosWidgetState createState() =>
      _AnadirDispositivosWidgetState();
}

class _AnadirDispositivosWidgetState extends State<AnadirDispositivosWidget> {
  late AnadirDispositivosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnadirDispositivosModel());
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 30, 50, 0),
                  child: Text(
                    'Añadir Dispositivos',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'Poppins',
                      lineHeight: 1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 50, 50, 50),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'NombreDispositivo',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Icon(
                                      Icons.add_circle,
                                      color: FlutterFlowTheme.of(context)
                                          .logoVerde,
                                      size: 24,
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(100, 0, 100, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 100,
                          borderWidth: 1,
                          buttonSize: 60,
                          fillColor: FlutterFlowTheme.of(context).logoAzul,
                          icon: Icon(
                            Icons.loop,
                            color:
                            FlutterFlowTheme.of(context).primaryBackground,
                            size: 30,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
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
  }
}
