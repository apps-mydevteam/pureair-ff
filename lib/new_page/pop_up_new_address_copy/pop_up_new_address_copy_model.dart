import '/components/pop_up_new_address2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'pop_up_new_address_copy_widget.dart' show PopUpNewAddressCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PopUpNewAddressCopyModel
    extends FlutterFlowModel<PopUpNewAddressCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PopUpNewAddress2 component.
  late PopUpNewAddress2Model popUpNewAddress2Model;

  @override
  void initState(BuildContext context) {
    popUpNewAddress2Model = createModel(context, () => PopUpNewAddress2Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    popUpNewAddress2Model.dispose();
  }
}
