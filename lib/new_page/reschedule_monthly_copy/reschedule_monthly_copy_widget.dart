import '/components/pop_up_reschedule_monthly2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reschedule_monthly_copy_model.dart';
export 'reschedule_monthly_copy_model.dart';

class RescheduleMonthlyCopyWidget extends StatefulWidget {
  const RescheduleMonthlyCopyWidget({super.key});

  @override
  State<RescheduleMonthlyCopyWidget> createState() =>
      _RescheduleMonthlyCopyWidgetState();
}

class _RescheduleMonthlyCopyWidgetState
    extends State<RescheduleMonthlyCopyWidget> {
  late RescheduleMonthlyCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RescheduleMonthlyCopyModel());

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
            model: _model.popUpRescheduleMonthly2Model,
            updateCallback: () => setState(() {}),
            child: PopUpRescheduleMonthly2Widget(),
          ),
        ),
      ),
    );
  }
}
