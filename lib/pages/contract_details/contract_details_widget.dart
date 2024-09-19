import '/components/yearly_contract_details/yearly_contract_details_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contract_details_model.dart';
export 'contract_details_model.dart';

class ContractDetailsWidget extends StatefulWidget {
  const ContractDetailsWidget({super.key});

  @override
  State<ContractDetailsWidget> createState() => _ContractDetailsWidgetState();
}

class _ContractDetailsWidgetState extends State<ContractDetailsWidget> {
  late ContractDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContractDetailsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.yearlyContractDetailsModel,
            updateCallback: () => safeSetState(() {}),
            child: YearlyContractDetailsWidget(
              profileId: 'id',
            ),
          ),
        ),
      ),
    );
  }
}
