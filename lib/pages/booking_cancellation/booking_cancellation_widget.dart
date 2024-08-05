import '/components/pop_up_cancel/pop_up_cancel_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'booking_cancellation_model.dart';
export 'booking_cancellation_model.dart';

class BookingCancellationWidget extends StatefulWidget {
  const BookingCancellationWidget({super.key});

  @override
  State<BookingCancellationWidget> createState() =>
      _BookingCancellationWidgetState();
}

class _BookingCancellationWidgetState extends State<BookingCancellationWidget> {
  late BookingCancellationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingCancellationModel());

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
            model: _model.popUpCancelModel,
            updateCallback: () => setState(() {}),
            child: PopUpCancelWidget(),
          ),
        ),
      ),
    );
  }
}
