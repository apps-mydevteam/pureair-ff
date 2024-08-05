import '/components/pop_up_reschedule_monthly2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'reschedule_monthly_copy_widget.dart' show RescheduleMonthlyCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RescheduleMonthlyCopyModel
    extends FlutterFlowModel<RescheduleMonthlyCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PopUpRescheduleMonthly2 component.
  late PopUpRescheduleMonthly2Model popUpRescheduleMonthly2Model;

  @override
  void initState(BuildContext context) {
    popUpRescheduleMonthly2Model =
        createModel(context, () => PopUpRescheduleMonthly2Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    popUpRescheduleMonthly2Model.dispose();
  }
}
