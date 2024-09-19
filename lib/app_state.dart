import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _getCompanyId = prefs.getInt('ff_getCompanyId') ?? _getCompanyId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _getCompanyId = 1;
  int get getCompanyId => _getCompanyId;
  set getCompanyId(int value) {
    _getCompanyId = value;
    prefs.setInt('ff_getCompanyId', value);
  }

  bool _isAdmin = false;
  bool get isAdmin => _isAdmin;
  set isAdmin(bool value) {
    _isAdmin = value;
  }

  List<CartStruct> _cart = [];
  List<CartStruct> get cart => _cart;
  set cart(List<CartStruct> value) {
    _cart = value;
  }

  void addToCart(CartStruct value) {
    cart.add(value);
  }

  void removeFromCart(CartStruct value) {
    cart.remove(value);
  }

  void removeAtIndexFromCart(int index) {
    cart.removeAt(index);
  }

  void updateCartAtIndex(
    int index,
    CartStruct Function(CartStruct) updateFn,
  ) {
    cart[index] = updateFn(_cart[index]);
  }

  void insertAtIndexInCart(int index, CartStruct value) {
    cart.insert(index, value);
  }

  double _totalCart = 0.0;
  double get totalCart => _totalCart;
  set totalCart(double value) {
    _totalCart = value;
  }

  List<ContractItemStruct> _contractItems = [];
  List<ContractItemStruct> get contractItems => _contractItems;
  set contractItems(List<ContractItemStruct> value) {
    _contractItems = value;
  }

  void addToContractItems(ContractItemStruct value) {
    contractItems.add(value);
  }

  void removeFromContractItems(ContractItemStruct value) {
    contractItems.remove(value);
  }

  void removeAtIndexFromContractItems(int index) {
    contractItems.removeAt(index);
  }

  void updateContractItemsAtIndex(
    int index,
    ContractItemStruct Function(ContractItemStruct) updateFn,
  ) {
    contractItems[index] = updateFn(_contractItems[index]);
  }

  void insertAtIndexInContractItems(int index, ContractItemStruct value) {
    contractItems.insert(index, value);
  }

  int _contractId = 0;
  int get contractId => _contractId;
  set contractId(int value) {
    _contractId = value;
  }

  String _postalCode = '';
  String get postalCode => _postalCode;
  set postalCode(String value) {
    _postalCode = value;
  }

  final _orderItemsManager = FutureRequestManager<List<OrderitemsRow>>();
  Future<List<OrderitemsRow>> orderItems({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<OrderitemsRow>> Function() requestFn,
  }) =>
      _orderItemsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearOrderItemsCache() => _orderItemsManager.clear();
  void clearOrderItemsCacheKey(String? uniqueKey) =>
      _orderItemsManager.clearRequest(uniqueKey);

  final _orderItemNamesManager = FutureRequestManager<List<ServiceitemsRow>>();
  Future<List<ServiceitemsRow>> orderItemNames({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ServiceitemsRow>> Function() requestFn,
  }) =>
      _orderItemNamesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearOrderItemNamesCache() => _orderItemNamesManager.clear();
  void clearOrderItemNamesCacheKey(String? uniqueKey) =>
      _orderItemNamesManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
