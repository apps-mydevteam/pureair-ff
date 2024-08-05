import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
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

  final unfocusNode = FocusNode();
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
  // State field(s) for emailLogin widget.
  FocusNode? emailLoginFocusNode1;
  TextEditingController? emailLoginTextController1;
  String? Function(BuildContext, String?)? emailLoginTextController1Validator;
  // State field(s) for emailLogin widget.
  FocusNode? emailLoginFocusNode2;
  TextEditingController? emailLoginTextController2;
  String? Function(BuildContext, String?)? emailLoginTextController2Validator;
  // State field(s) for emailLogin widget.
  FocusNode? emailLoginFocusNode3;
  TextEditingController? emailLoginTextController3;
  String? Function(BuildContext, String?)? emailLoginTextController3Validator;
  // State field(s) for emailLogin widget.
  FocusNode? emailLoginFocusNode4;
  TextEditingController? emailLoginTextController4;
  String? Function(BuildContext, String?)? emailLoginTextController4Validator;
  // State field(s) for emailLogin widget.
  FocusNode? emailLoginFocusNode5;
  TextEditingController? emailLoginTextController5;
  String? Function(BuildContext, String?)? emailLoginTextController5Validator;
  // State field(s) for ConfirmCheckbox widget.
  bool? confirmCheckboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
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

    emailLoginFocusNode1?.dispose();
    emailLoginTextController1?.dispose();

    emailLoginFocusNode2?.dispose();
    emailLoginTextController2?.dispose();

    emailLoginFocusNode3?.dispose();
    emailLoginTextController3?.dispose();

    emailLoginFocusNode4?.dispose();
    emailLoginTextController4?.dispose();

    emailLoginFocusNode5?.dispose();
    emailLoginTextController5?.dispose();
  }
}
