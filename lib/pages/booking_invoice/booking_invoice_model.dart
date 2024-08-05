import '/components/pop_up_invoice/pop_up_invoice_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'booking_invoice_widget.dart' show BookingInvoiceWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingInvoiceModel extends FlutterFlowModel<BookingInvoiceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PopUpInvoice component.
  late PopUpInvoiceModel popUpInvoiceModel;

  @override
  void initState(BuildContext context) {
    popUpInvoiceModel = createModel(context, () => PopUpInvoiceModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    popUpInvoiceModel.dispose();
  }
}
