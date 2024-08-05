import '/components/pop_up_new_address2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pop_up_new_address_copy_model.dart';
export 'pop_up_new_address_copy_model.dart';

class PopUpNewAddressCopyWidget extends StatefulWidget {
  const PopUpNewAddressCopyWidget({super.key});

  @override
  State<PopUpNewAddressCopyWidget> createState() =>
      _PopUpNewAddressCopyWidgetState();
}

class _PopUpNewAddressCopyWidgetState extends State<PopUpNewAddressCopyWidget> {
  late PopUpNewAddressCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopUpNewAddressCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.popUpNewAddress2Model,
            updateCallback: () => setState(() {}),
            child: PopUpNewAddress2Widget(),
          ),
        ),
      ),
    );
  }
}
