import '/components/pop_up_set_new_schedule/pop_up_set_new_schedule_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reschedule_weekly_copy_backup_model.dart';
export 'reschedule_weekly_copy_backup_model.dart';

class RescheduleWeeklyCopyBackupWidget extends StatefulWidget {
  const RescheduleWeeklyCopyBackupWidget({super.key});

  @override
  State<RescheduleWeeklyCopyBackupWidget> createState() =>
      _RescheduleWeeklyCopyBackupWidgetState();
}

class _RescheduleWeeklyCopyBackupWidgetState
    extends State<RescheduleWeeklyCopyBackupWidget> {
  late RescheduleWeeklyCopyBackupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RescheduleWeeklyCopyBackupModel());

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
