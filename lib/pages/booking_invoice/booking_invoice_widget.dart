import '/components/pop_up_invoice/pop_up_invoice_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'booking_invoice_model.dart';
export 'booking_invoice_model.dart';

class BookingInvoiceWidget extends StatefulWidget {
  const BookingInvoiceWidget({super.key});

  @override
  State<BookingInvoiceWidget> createState() => _BookingInvoiceWidgetState();
}

class _BookingInvoiceWidgetState extends State<BookingInvoiceWidget> {
  late BookingInvoiceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingInvoiceModel());

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
            model: _model.popUpInvoiceModel,
            updateCallback: () => setState(() {}),
            child: PopUpInvoiceWidget(),
          ),
        ),
      ),
    );
  }
}
