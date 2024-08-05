import '/components/pop_up_cancel/pop_up_cancel_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'booking_cancellation_widget.dart' show BookingCancellationWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingCancellationModel
    extends FlutterFlowModel<BookingCancellationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PopUpCancel component.
  late PopUpCancelModel popUpCancelModel;

  @override
  void initState(BuildContext context) {
    popUpCancelModel = createModel(context, () => PopUpCancelModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    popUpCancelModel.dispose();
  }
}
