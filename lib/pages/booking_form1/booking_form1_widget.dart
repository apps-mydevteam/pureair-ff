import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/contract_card/contract_card_widget.dart';
import '/components/drawer_main_menus/drawer_main_menus_widget.dart';
import '/components/pop_up_new_address/pop_up_new_address_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'booking_form1_model.dart';
export 'booking_form1_model.dart';

class BookingForm1Widget extends StatefulWidget {
  const BookingForm1Widget({
    super.key,
    bool? devmode,
    required this.customerId,
  }) : this.devmode = devmode ?? false;

  final bool devmode;
  final String? customerId;

  @override
  State<BookingForm1Widget> createState() => _BookingForm1WidgetState();
}

class _BookingForm1WidgetState extends State<BookingForm1Widget> {
  late BookingForm1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingForm1Model());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<CustomersRow>>(
      future: CustomersTable().querySingleRow(
        queryFn: (q) => q.eq(
          'firebase_uid',
          currentUserUid,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).info,
            body: Center(
              child: SizedBox(
                width: 88.0,
                height: 88.0,
                child: SpinKitRipple(
                  color: FlutterFlowTheme.of(context).tertiary,
                  size: 88.0,
                ),
              ),
            ),
          );
        }
        List<CustomersRow> bookingForm1CustomersRowList = snapshot.data!;

        final bookingForm1CustomersRow = bookingForm1CustomersRowList.isNotEmpty
            ? bookingForm1CustomersRowList.first
            : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).info,
            drawer: Drawer(
              elevation: 16.0,
              child: wrapWithModel(
                model: _model.drawerMainMenusModel,
                updateCallback: () => safeSetState(() {}),
                child: DrawerMainMenusWidget(),
              ),
            ),
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  scaffoldKey.currentState!.openDrawer();
                },
                child: Icon(
                  Icons.menu,
                  color: FlutterFlowTheme.of(context).info,
                  size: 24.0,
                ),
              ),
              title: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().contractId = 0;
                  FFAppState().contractItems = [];
                  FFAppState().cart = [];
                  FFAppState().totalCart = 0.0;
                  safeSetState(() {});

                  context.pushNamed('HomePage');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/logo-white.png',
                    width: 54.0,
                    height: 54.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      FFAppState().contractId = 0;
                      FFAppState().contractItems = [];
                      FFAppState().cart = [];
                      FFAppState().totalCart = 0.0;
                      safeSetState(() {});

                      context.pushNamed('Profile');
                    },
                    child: Icon(
                      Icons.person_rounded,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                  ),
                ),
              ],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).info,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 480.0,
                            height: 900.0,
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 0.0),
                                    child: Text(
                                      'Book An Appointment',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 16.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 2.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 2.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFC2C2C2),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Color(0xFFC2C2C2),
                                                size: 24.0,
                                              ),
                                              Icon(
                                                Icons.circle,
                                                color: Color(0xFFC2C2C2),
                                                size: 24.0,
                                              ),
                                              Icon(
                                                Icons.circle,
                                                color: Color(0xFFC2C2C2),
                                                size: 24.0,
                                              ),
                                              Icon(
                                                Icons.circle,
                                                color: Color(0xFFC2C2C2),
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Text(
                                        'Address',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: FutureBuilder<
                                        List<CustomeraddressesRow>>(
                                      future:
                                          CustomeraddressesTable().queryRows(
                                        queryFn: (q) => q.eq(
                                          'customer_id',
                                          bookingForm1CustomersRow?.id,
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 88.0,
                                              height: 88.0,
                                              child: SpinKitRipple(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                size: 88.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<CustomeraddressesRow>
                                            selectDefaultAddressCustomeraddressesRowList =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<int>(
                                          controller: _model
                                                  .selectDefaultAddressValueController ??=
                                              FormFieldController<int>(
                                            _model.selectDefaultAddressValue ??=
                                                1,
                                          ),
                                          options: List<int>.from(
                                              selectDefaultAddressCustomeraddressesRowList
                                                  .map((e) =>
                                                      valueOrDefault<int>(
                                                        e.id,
                                                        0,
                                                      ))
                                                  .toList()),
                                          optionLabels:
                                              selectDefaultAddressCustomeraddressesRowList
                                                  .map((e) => e.name)
                                                  .withoutNulls
                                                  .toList(),
                                          onChanged: (val) => safeSetState(() =>
                                              _model.selectDefaultAddressValue =
                                                  val),
                                          width: double.infinity,
                                          height: 54.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Choose and Address',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 2.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Builder(
                                      builder: (context) => Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () => FocusScope.of(
                                                            dialogContext)
                                                        .unfocus(),
                                                    child:
                                                        PopUpNewAddressWidget(
                                                      customerid:
                                                          widget!.customerId!,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          text: '+ Add New Address',
                                          options: FFButtonOptions(
                                            height: 33.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        'Contractors in private condos often have restricted operating hours. To ensure you don\'t miss your appointment, kindly seek management approval for non-standard schedules.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              fontStyle: FontStyle.italic,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 32.0, 0.0, 0.0),
                                      child: Text(
                                        'Is your air conditioner positioned above 3.5 meters? ',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        'Tick \"Yes\" so we can bring a taller ladder, ensuring safe access! ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              fontStyle: FontStyle.italic,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: FlutterFlowRadioButton(
                                        options: ['Yes, it is above 3.5m', 'No']
                                            .toList(),
                                        onChanged: (val) => safeSetState(() {}),
                                        controller: _model
                                                .radioButtonValueController ??=
                                            FormFieldController<String>(
                                                'Yes, it is above 3.5m'),
                                        optionHeight: 32.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                            ),
                                        selectedTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  letterSpacing: 0.0,
                                                ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.vertical,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed(
                                            'BookingForm2',
                                            queryParameters: {
                                              'devmode': serializeParam(
                                                false,
                                                ParamType.bool,
                                              ),
                                              'needLeader': serializeParam(
                                                _model.radioButtonValue != 'No',
                                                ParamType.bool,
                                              ),
                                              'customeraddressId':
                                                  serializeParam(
                                                _model
                                                    .selectDefaultAddressValue,
                                                ParamType.int,
                                              ),
                                              'useContract': serializeParam(
                                                (FFAppState().contractId !=
                                                        null) &&
                                                    (FFAppState().contractId !=
                                                        0),
                                                ParamType.bool,
                                              ),
                                              'contractId': serializeParam(
                                                FFAppState().contractId,
                                                ParamType.int,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        text: 'Next',
                                        options: FFButtonOptions(
                                          height: 33.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                letterSpacing: 0.0,
                                              ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: FutureBuilder<List<ContractsRow>>(
                                        future: ContractsTable().querySingleRow(
                                          queryFn: (q) => q
                                              .eq(
                                                'customer_id',
                                                bookingForm1CustomersRow?.id,
                                              )
                                              .eq(
                                                'approved',
                                                true,
                                              )
                                              .gte(
                                                'end_date',
                                                supaSerialize<DateTime>(
                                                    getCurrentTimestamp),
                                              )
                                              .eq(
                                                'deleted',
                                                false,
                                              )
                                              .order('end_date',
                                                  ascending: true),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 88.0,
                                                height: 88.0,
                                                child: SpinKitRipple(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  size: 88.0,
                                                ),
                                              ),
                                            );
                                          }
                                          List<ContractsRow>
                                              expandableContractsRowList =
                                              snapshot.data!;

                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final expandableContractsRow =
                                              expandableContractsRowList
                                                      .isNotEmpty
                                                  ? expandableContractsRowList
                                                      .first
                                                  : null;

                                          return Container(
                                            width: double.infinity,
                                            color: Colors.white,
                                            child: ExpandableNotifier(
                                              controller: _model
                                                  .expandableExpandableController,
                                              child: ExpandablePanel(
                                                header: Text(
                                                  'Yearly Contract',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                collapsed: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.0,
                                                  height: 0.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Empty',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodySmall
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontSize: 0.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                expanded: FutureBuilder<
                                                    List<ContractitemsRow>>(
                                                  future: ContractitemsTable()
                                                      .queryRows(
                                                    queryFn: (q) => q
                                                        .eq(
                                                          'contract_id',
                                                          expandableContractsRow
                                                              ?.id,
                                                        )
                                                        .eq(
                                                          'deleted',
                                                          false,
                                                        ),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 88.0,
                                                          height: 88.0,
                                                          child: SpinKitRipple(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary,
                                                            size: 88.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<ContractitemsRow>
                                                        columnContractitemsRowList =
                                                        snapshot.data!;

                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: List.generate(
                                                          columnContractitemsRowList
                                                              .length,
                                                          (columnIndex) {
                                                        final columnContractitemsRow =
                                                            columnContractitemsRowList[
                                                                columnIndex];
                                                        return wrapWithModel(
                                                          model: _model
                                                              .contractCardModels
                                                              .getModel(
                                                            columnContractitemsRow
                                                                .id
                                                                .toString(),
                                                            columnIndex,
                                                          ),
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ContractCardWidget(
                                                            key: Key(
                                                              'Keycof_${columnContractitemsRow.id.toString()}',
                                                            ),
                                                            id: expandableContractsRow!
                                                                .id,
                                                            servicesAmount:
                                                                expandableContractsRow!
                                                                    .servicesAmount!,
                                                            servicesUsed:
                                                                expandableContractsRow!
                                                                    .servicesUsed!,
                                                            contractId:
                                                                expandableContractsRow!
                                                                    .id,
                                                            contractItemId:
                                                                columnContractitemsRow
                                                                    .id,
                                                          ),
                                                        );
                                                      }).addToEnd(SizedBox(
                                                          height: 32.0)),
                                                    );
                                                  },
                                                ),
                                                theme: ExpandableThemeData(
                                                  tapHeaderToExpand: true,
                                                  tapBodyToExpand: false,
                                                  tapBodyToCollapse: false,
                                                  headerAlignment:
                                                      ExpandablePanelHeaderAlignment
                                                          .center,
                                                  hasIcon: true,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
