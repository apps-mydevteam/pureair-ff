import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'auth_page_widget.dart' show AuthPageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AuthPageModel extends FlutterFlowModel<AuthPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for phoneLogin widget.
  FocusNode? phoneLoginFocusNode;
  TextEditingController? phoneLoginTextController;
  String? Function(BuildContext, String?)? phoneLoginTextControllerValidator;
  // State field(s) for sms1 widget.
  FocusNode? sms1FocusNode;
  TextEditingController? sms1TextController;
  String? Function(BuildContext, String?)? sms1TextControllerValidator;
  // State field(s) for sms2 widget.
  FocusNode? sms2FocusNode;
  TextEditingController? sms2TextController;
  String? Function(BuildContext, String?)? sms2TextControllerValidator;
  // State field(s) for sms3 widget.
  FocusNode? sms3FocusNode;
  TextEditingController? sms3TextController;
  String? Function(BuildContext, String?)? sms3TextControllerValidator;
  // State field(s) for sms4 widget.
  FocusNode? sms4FocusNode;
  TextEditingController? sms4TextController;
  String? Function(BuildContext, String?)? sms4TextControllerValidator;
  // State field(s) for sms5 widget.
  FocusNode? sms5FocusNode;
  TextEditingController? sms5TextController;
  String? Function(BuildContext, String?)? sms5TextControllerValidator;
  // State field(s) for sms6 widget.
  FocusNode? sms6FocusNode;
  TextEditingController? sms6TextController;
  String? Function(BuildContext, String?)? sms6TextControllerValidator;
  // State field(s) for fullnameCreate widget.
  FocusNode? fullnameCreateFocusNode;
  TextEditingController? fullnameCreateTextController;
  String? Function(BuildContext, String?)?
      fullnameCreateTextControllerValidator;
  // State field(s) for phoneCreate widget.
  FocusNode? phoneCreateFocusNode;
  TextEditingController? phoneCreateTextController;
  String? Function(BuildContext, String?)? phoneCreateTextControllerValidator;
  // State field(s) for emailCreate widget.
  FocusNode? emailCreateFocusNode;
  TextEditingController? emailCreateTextController;
  String? Function(BuildContext, String?)? emailCreateTextControllerValidator;
  // State field(s) for PostalName widget.
  FocusNode? postalNameFocusNode;
  TextEditingController? postalNameTextController;
  String? Function(BuildContext, String?)? postalNameTextControllerValidator;
  // State field(s) for Address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // State field(s) for PostalCode widget.
  FocusNode? postalCodeFocusNode;
  TextEditingController? postalCodeTextController;
  String? Function(BuildContext, String?)? postalCodeTextControllerValidator;
  // State field(s) for unitLevel widget.
  FocusNode? unitLevelFocusNode;
  TextEditingController? unitLevelTextController;
  String? Function(BuildContext, String?)? unitLevelTextControllerValidator;
  // State field(s) for unitNumber widget.
  FocusNode? unitNumberFocusNode;
  TextEditingController? unitNumberTextController;
  String? Function(BuildContext, String?)? unitNumberTextControllerValidator;
  // State field(s) for ConfirmCheckbox widget.
  bool? confirmCheckboxValue;
  // Stores action output result for [Backend Call - API (Create User Supabase)] action in Button-Login widget.
  ApiCallResponse? apiResultxpl;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    phoneLoginFocusNode?.dispose();
    phoneLoginTextController?.dispose();

    sms1FocusNode?.dispose();
    sms1TextController?.dispose();

    sms2FocusNode?.dispose();
    sms2TextController?.dispose();

    sms3FocusNode?.dispose();
    sms3TextController?.dispose();

    sms4FocusNode?.dispose();
    sms4TextController?.dispose();

    sms5FocusNode?.dispose();
    sms5TextController?.dispose();

    sms6FocusNode?.dispose();
    sms6TextController?.dispose();

    fullnameCreateFocusNode?.dispose();
    fullnameCreateTextController?.dispose();

    phoneCreateFocusNode?.dispose();
    phoneCreateTextController?.dispose();

    emailCreateFocusNode?.dispose();
    emailCreateTextController?.dispose();

    postalNameFocusNode?.dispose();
    postalNameTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    postalCodeFocusNode?.dispose();
    postalCodeTextController?.dispose();

    unitLevelFocusNode?.dispose();
    unitLevelTextController?.dispose();

    unitNumberFocusNode?.dispose();
    unitNumberTextController?.dispose();
  }
}
