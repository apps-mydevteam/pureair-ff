import '/components/pop_up_set_new_schedule/pop_up_set_new_schedule_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'set_new_schedule_widget.dart' show SetNewScheduleWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SetNewScheduleModel extends FlutterFlowModel<SetNewScheduleWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PopUpSetNewSchedule component.
  late PopUpSetNewScheduleModel popUpSetNewScheduleModel;

  @override
  void initState(BuildContext context) {
    popUpSetNewScheduleModel =
        createModel(context, () => PopUpSetNewScheduleModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    popUpSetNewScheduleModel.dispose();
  }
}
