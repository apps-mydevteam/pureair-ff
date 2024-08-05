import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/pop_up_new_address2_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for fullnameText widget.
  FocusNode? fullnameTextFocusNode;
  TextEditingController? fullnameTextTextController;
  String? Function(BuildContext, String?)? fullnameTextTextControllerValidator;
  // State field(s) for phoneText widget.
  FocusNode? phoneTextFocusNode;
  TextEditingController? phoneTextTextController;
  String? Function(BuildContext, String?)? phoneTextTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for emailText widget.
  FocusNode? emailTextFocusNode;
  TextEditingController? emailTextTextController;
  String? Function(BuildContext, String?)? emailTextTextControllerValidator;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // State field(s) for addresstext widget.
  FocusNode? addresstextFocusNode;
  TextEditingController? addresstextTextController;
  String? Function(BuildContext, String?)? addresstextTextControllerValidator;
  // State field(s) for postalcodetext widget.
  FocusNode? postalcodetextFocusNode;
  TextEditingController? postalcodetextTextController;
  String? Function(BuildContext, String?)?
      postalcodetextTextControllerValidator;
  // State field(s) for floortext widget.
  FocusNode? floortextFocusNode;
  TextEditingController? floortextTextController;
  String? Function(BuildContext, String?)? floortextTextControllerValidator;
  // State field(s) for unitnumbertext widget.
  FocusNode? unitnumbertextFocusNode;
  TextEditingController? unitnumbertextTextController;
  String? Function(BuildContext, String?)?
      unitnumbertextTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    fullnameTextFocusNode?.dispose();
    fullnameTextTextController?.dispose();

    phoneTextFocusNode?.dispose();
    phoneTextTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController3?.dispose();

    textFieldFocusNode2?.dispose();
    textController4?.dispose();

    textFieldFocusNode3?.dispose();
    textController5?.dispose();

    textFieldFocusNode4?.dispose();
    textController6?.dispose();

    textFieldFocusNode5?.dispose();
    textController7?.dispose();

    textFieldFocusNode6?.dispose();
    textController8?.dispose();

    emailTextFocusNode?.dispose();
    emailTextTextController?.dispose();

    addresstextFocusNode?.dispose();
    addresstextTextController?.dispose();

    postalcodetextFocusNode?.dispose();
    postalcodetextTextController?.dispose();

    floortextFocusNode?.dispose();
    floortextTextController?.dispose();

    unitnumbertextFocusNode?.dispose();
    unitnumbertextTextController?.dispose();
  }
}
