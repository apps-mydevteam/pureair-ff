import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/drawer_main_menus/drawer_main_menus_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'booking25_widget.dart' show Booking25Widget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Booking25Model extends FlutterFlowModel<Booking25Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for DrawerMainMenus component.
  late DrawerMainMenusModel drawerMainMenusModel;

  @override
  void initState(BuildContext context) {
    drawerMainMenusModel = createModel(context, () => DrawerMainMenusModel());
  }

  @override
  void dispose() {
    drawerMainMenusModel.dispose();
  }
}
