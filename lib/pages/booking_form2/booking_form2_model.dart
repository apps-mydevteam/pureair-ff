import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/drawer_main_menus/drawer_main_menus_widget.dart';
import '/components/services_item_field/services_item_field_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'booking_form2_widget.dart' show BookingForm2Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingForm2Model extends FlutterFlowModel<BookingForm2Widget> {
  ///  Local state fields for this page.

  List<dynamic> servicesItems = [];
  void addToServicesItems(dynamic item) => servicesItems.add(item);
  void removeFromServicesItems(dynamic item) => servicesItems.remove(item);
  void removeAtIndexFromServicesItems(int index) =>
      servicesItems.removeAt(index);
  void insertAtIndexInServicesItems(int index, dynamic item) =>
      servicesItems.insert(index, item);
  void updateServicesItemsAtIndex(int index, Function(dynamic) updateFn) =>
      servicesItems[index] = updateFn(servicesItems[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for CountController widget.
  int? countControllerValue1;
  // Stores action output result for [Custom Action - sumCartTotal] action in CountController widget.
  double? totalCart;
  // State field(s) for CountControllerCtr widget.
  int? countControllerCtrValue;
  // Stores action output result for [Custom Action - sumCartTotal] action in CountControllerCtr widget.
  double? totalCart2;
  // State field(s) for CountController widget.
  int? countControllerValue2;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // Models for ServicesItemField dynamic component.
  late FlutterFlowDynamicModels<ServicesItemFieldModel> servicesItemFieldModels;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for CountController widget.
  int? countControllerValue3;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for CountController widget.
  int? countControllerValue4;
  // Model for DrawerMainMenus component.
  late DrawerMainMenusModel drawerMainMenusModel;

  @override
  void initState(BuildContext context) {
    servicesItemFieldModels =
        FlutterFlowDynamicModels(() => ServicesItemFieldModel());
    drawerMainMenusModel = createModel(context, () => DrawerMainMenusModel());
  }

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    servicesItemFieldModels.dispose();
    expandableExpandableController3.dispose();
    expandableExpandableController4.dispose();
    drawerMainMenusModel.dispose();
  }
}
