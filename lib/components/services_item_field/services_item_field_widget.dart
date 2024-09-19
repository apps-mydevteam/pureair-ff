import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'services_item_field_model.dart';
export 'services_item_field_model.dart';

class ServicesItemFieldWidget extends StatefulWidget {
  const ServicesItemFieldWidget({
    super.key,
    this.serviceitemname,
    this.serviceitemid,
    int? qty,
    double? pricea,
  })  : this.qty = qty ?? 0,
        this.pricea = pricea ?? 0.0;

  final String? serviceitemname;
  final int? serviceitemid;
  final int qty;
  final double pricea;

  @override
  State<ServicesItemFieldWidget> createState() =>
      _ServicesItemFieldWidgetState();
}

class _ServicesItemFieldWidgetState extends State<ServicesItemFieldWidget> {
  late ServicesItemFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServicesItemFieldModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 16.0, 16.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Text(
              widget!.serviceitemname!,
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    fontFamily: 'Montserrat',
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 100.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).info,
                      borderRadius: BorderRadius.circular(5.0),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                    ),
                    child: FlutterFlowCountController(
                      decrementIconBuilder: (enabled) => Icon(
                        Icons.horizontal_rule,
                        color: enabled
                            ? FlutterFlowTheme.of(context).secondaryText
                            : FlutterFlowTheme.of(context).alternate,
                        size: 12.0,
                      ),
                      incrementIconBuilder: (enabled) => FaIcon(
                        FontAwesomeIcons.plus,
                        color: enabled
                            ? FlutterFlowTheme.of(context).primary
                            : FlutterFlowTheme.of(context).alternate,
                        size: 12.0,
                      ),
                      countBuilder: (count) => Text(
                        count.toString(),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                      count: _model.countControllerValue ??= 0,
                      updateCount: (count) async {
                        safeSetState(() => _model.countControllerValue = count);
                        FFAppState().addToCart(CartStruct(
                          serviceitemId: widget!.serviceitemid,
                          quantity: widget!.qty,
                          total: valueOrDefault<double>(
                            widget!.qty.toDouble() * widget!.pricea,
                            0.0,
                          ),
                        ));
                        safeSetState(() {});
                        _model.totalCarty = await actions.sumCartTotal();
                        FFAppState().totalCart = _model.totalCarty!;
                        FFAppState().update(() {});

                        safeSetState(() {});
                      },
                      stepSize: 1,
                      minimum: 0,
                      maximum: 10,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
