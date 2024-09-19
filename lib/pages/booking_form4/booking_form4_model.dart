import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/drawer_main_menus/drawer_main_menus_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'booking_form4_widget.dart' show BookingForm4Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingForm4Model extends FlutterFlowModel<BookingForm4Widget> {
  ///  Local state fields for this page.

  bool? hasVoucher = false;

  int? voucherId;

  double? voucherDisc = 0.0;

  double grandTotal = 0.0;

  int serviceIndex = 0;

  double? dicountedPrice = 0.0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Get Voucher)] action in Button widget.
  ApiCallResponse? apiVoucher;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersRow? orderDetail;
  // Model for DrawerMainMenus component.
  late DrawerMainMenusModel drawerMainMenusModel;

  @override
  void initState(BuildContext context) {
    drawerMainMenusModel = createModel(context, () => DrawerMainMenusModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    drawerMainMenusModel.dispose();
  }
}
