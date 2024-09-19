import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/contract_card/contract_card_widget.dart';
import '/components/drawer_main_menus/drawer_main_menus_widget.dart';
import '/components/pop_up_new_address/pop_up_new_address_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'booking_form1_widget.dart' show BookingForm1Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingForm1Model extends FlutterFlowModel<BookingForm1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for selectDefaultAddress widget.
  int? selectDefaultAddressValue;
  FormFieldController<int>? selectDefaultAddressValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Models for contractCard dynamic component.
  late FlutterFlowDynamicModels<ContractCardModel> contractCardModels;
  // Model for DrawerMainMenus component.
  late DrawerMainMenusModel drawerMainMenusModel;

  @override
  void initState(BuildContext context) {
    contractCardModels = FlutterFlowDynamicModels(() => ContractCardModel());
    drawerMainMenusModel = createModel(context, () => DrawerMainMenusModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    contractCardModels.dispose();
    drawerMainMenusModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
