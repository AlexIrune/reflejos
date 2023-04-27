import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProgramaModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool enCurso = false;

  ///  State fields for stateful widgets in this page.

  List<Color?>? colorsPicked;

  /// Query cache managers for this widget.

  final _obtenerEntrenadorActivoManager =
      StreamRequestManager<List<EntrenadoresRecord>>();
  Stream<List<EntrenadoresRecord>> obtenerEntrenadorActivo({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<EntrenadoresRecord>> Function() requestFn,
  }) =>
      _obtenerEntrenadorActivoManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearObtenerEntrenadorActivoCache() =>
      _obtenerEntrenadorActivoManager.clear();
  void clearObtenerEntrenadorActivoCacheKey(String? uniqueKey) =>
      _obtenerEntrenadorActivoManager.clearRequest(uniqueKey);

  final _obtenerUsuarioActivoManager =
      StreamRequestManager<List<UsuariosRecord>>();
  Stream<List<UsuariosRecord>> obtenerUsuarioActivo({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<UsuariosRecord>> Function() requestFn,
  }) =>
      _obtenerUsuarioActivoManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearObtenerUsuarioActivoCache() => _obtenerUsuarioActivoManager.clear();
  void clearObtenerUsuarioActivoCacheKey(String? uniqueKey) =>
      _obtenerUsuarioActivoManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    /// Dispose query cache managers for this widget.

    clearObtenerEntrenadorActivoCache();

    clearObtenerUsuarioActivoCache();
  }

  /// Additional helper methods are added here.

}
