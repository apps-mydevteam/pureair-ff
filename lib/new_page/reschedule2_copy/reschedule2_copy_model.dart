import '/components/reschedule_weekly2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'reschedule2_copy_widget.dart' show Reschedule2CopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Reschedule2CopyModel extends FlutterFlowModel<Reschedule2CopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for RescheduleWeekly2 component.
  late RescheduleWeekly2Model rescheduleWeekly2Model;

  @override
  void initState(BuildContext context) {
    rescheduleWeekly2Model =
        createModel(context, () => RescheduleWeekly2Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    rescheduleWeekly2Model.dispose();
  }
}
