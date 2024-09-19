import '/components/yearly_contract_details/yearly_contract_details_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'contract_details_widget.dart' show ContractDetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContractDetailsModel extends FlutterFlowModel<ContractDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for YearlyContractDetails component.
  late YearlyContractDetailsModel yearlyContractDetailsModel;

  @override
  void initState(BuildContext context) {
    yearlyContractDetailsModel =
        createModel(context, () => YearlyContractDetailsModel());
  }

  @override
  void dispose() {
    yearlyContractDetailsModel.dispose();
  }
}
