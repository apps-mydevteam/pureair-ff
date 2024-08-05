import '/components/pop_up_detail/pop_up_detail_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'booking_detail_widget.dart' show BookingDetailWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingDetailModel extends FlutterFlowModel<BookingDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PopUpDetail component.
  late PopUpDetailModel popUpDetailModel;

  @override
  void initState(BuildContext context) {
    popUpDetailModel = createModel(context, () => PopUpDetailModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    popUpDetailModel.dispose();
  }
}
