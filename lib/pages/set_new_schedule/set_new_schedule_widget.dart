import '/components/pop_up_set_new_schedule/pop_up_set_new_schedule_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'set_new_schedule_model.dart';
export 'set_new_schedule_model.dart';

class SetNewScheduleWidget extends StatefulWidget {
  const SetNewScheduleWidget({super.key});

  @override
  State<SetNewScheduleWidget> createState() => _SetNewScheduleWidgetState();
}

class _SetNewScheduleWidgetState extends State<SetNewScheduleWidget> {
  late SetNewScheduleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetNewScheduleModel());

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
            model: _model.popUpSetNewScheduleModel,
            updateCallback: () => setState(() {}),
            child: PopUpSetNewScheduleWidget(),
          ),
        ),
      ),
    );
  }
}
