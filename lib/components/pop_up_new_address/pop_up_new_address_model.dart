import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'pop_up_new_address_widget.dart' show PopUpNewAddressWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PopUpNewAddressModel extends FlutterFlowModel<PopUpNewAddressWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for namepostalcode widget.
  FocusNode? namepostalcodeFocusNode;
  TextEditingController? namepostalcodeTextController;
  String? Function(BuildContext, String?)?
      namepostalcodeTextControllerValidator;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // State field(s) for postalcode widget.
  FocusNode? postalcodeFocusNode;
  TextEditingController? postalcodeTextController;
  String? Function(BuildContext, String?)? postalcodeTextControllerValidator;
  // State field(s) for unitlevel widget.
  FocusNode? unitlevelFocusNode;
  TextEditingController? unitlevelTextController;
  String? Function(BuildContext, String?)? unitlevelTextControllerValidator;
  // State field(s) for unitumber widget.
  FocusNode? unitumberFocusNode;
  TextEditingController? unitumberTextController;
  String? Function(BuildContext, String?)? unitumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    namepostalcodeFocusNode?.dispose();
    namepostalcodeTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    postalcodeFocusNode?.dispose();
    postalcodeTextController?.dispose();

    unitlevelFocusNode?.dispose();
    unitlevelTextController?.dispose();

    unitumberFocusNode?.dispose();
    unitumberTextController?.dispose();
  }
}
