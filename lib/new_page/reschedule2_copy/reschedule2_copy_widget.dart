import '/components/reschedule_weekly2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reschedule2_copy_model.dart';
export 'reschedule2_copy_model.dart';

class Reschedule2CopyWidget extends StatefulWidget {
  const Reschedule2CopyWidget({super.key});

  @override
  State<Reschedule2CopyWidget> createState() => _Reschedule2CopyWidgetState();
}

class _Reschedule2CopyWidgetState extends State<Reschedule2CopyWidget> {
  late Reschedule2CopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Reschedule2CopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.rescheduleWeekly2Model,
            updateCallback: () => setState(() {}),
            child: RescheduleWeekly2Widget(),
          ),
        ),
      ),
    );
  }
}
