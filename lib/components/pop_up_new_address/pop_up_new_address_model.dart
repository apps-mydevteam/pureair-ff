import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'pop_up_new_address_widget.dart' show PopUpNewAddressWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PopUpNewAddressModel extends FlutterFlowModel<PopUpNewAddressWidget> {
  ///  Local state fields for this component.

  String? postal = '';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for namepostalcode widget.
  FocusNode? namepostalcodeFocusNode;
  TextEditingController? namepostalcodeTextController;
  String? Function(BuildContext, String?)?
      namepostalcodeTextControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (Search Address)] action in DropDown widget.
  ApiCallResponse? apiResult4tm;
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

    postalcodeFocusNode?.dispose();
    postalcodeTextController?.dispose();

    unitlevelFocusNode?.dispose();
    unitlevelTextController?.dispose();

    unitumberFocusNode?.dispose();
    unitumberTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
