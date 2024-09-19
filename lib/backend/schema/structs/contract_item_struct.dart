// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContractItemStruct extends FFFirebaseStruct {
  ContractItemStruct({
    int? contractId,
    int? contractItemId,
    int? qty,
    String? note,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _contractId = contractId,
        _contractItemId = contractItemId,
        _qty = qty,
        _note = note,
        super(firestoreUtilData);

  // "contractId" field.
  int? _contractId;
  int get contractId => _contractId ?? 0;
  set contractId(int? val) => _contractId = val;

  void incrementContractId(int amount) => contractId = contractId + amount;

  bool hasContractId() => _contractId != null;

  // "contractItemId" field.
  int? _contractItemId;
  int get contractItemId => _contractItemId ?? 0;
  set contractItemId(int? val) => _contractItemId = val;

  void incrementContractItemId(int amount) =>
      contractItemId = contractItemId + amount;

  bool hasContractItemId() => _contractItemId != null;

  // "qty" field.
  int? _qty;
  int get qty => _qty ?? 1;
  set qty(int? val) => _qty = val;

  void incrementQty(int amount) => qty = qty + amount;

  bool hasQty() => _qty != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  set note(String? val) => _note = val;

  bool hasNote() => _note != null;

  static ContractItemStruct fromMap(Map<String, dynamic> data) =>
      ContractItemStruct(
        contractId: castToType<int>(data['contractId']),
        contractItemId: castToType<int>(data['contractItemId']),
        qty: castToType<int>(data['qty']),
        note: data['note'] as String?,
      );

  static ContractItemStruct? maybeFromMap(dynamic data) => data is Map
      ? ContractItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'contractId': _contractId,
        'contractItemId': _contractItemId,
        'qty': _qty,
        'note': _note,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'contractId': serializeParam(
          _contractId,
          ParamType.int,
        ),
        'contractItemId': serializeParam(
          _contractItemId,
          ParamType.int,
        ),
        'qty': serializeParam(
          _qty,
          ParamType.int,
        ),
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
      }.withoutNulls;

  static ContractItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      ContractItemStruct(
        contractId: deserializeParam(
          data['contractId'],
          ParamType.int,
          false,
        ),
        contractItemId: deserializeParam(
          data['contractItemId'],
          ParamType.int,
          false,
        ),
        qty: deserializeParam(
          data['qty'],
          ParamType.int,
          false,
        ),
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ContractItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ContractItemStruct &&
        contractId == other.contractId &&
        contractItemId == other.contractItemId &&
        qty == other.qty &&
        note == other.note;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([contractId, contractItemId, qty, note]);
}

ContractItemStruct createContractItemStruct({
  int? contractId,
  int? contractItemId,
  int? qty,
  String? note,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ContractItemStruct(
      contractId: contractId,
      contractItemId: contractItemId,
      qty: qty,
      note: note,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ContractItemStruct? updateContractItemStruct(
  ContractItemStruct? contractItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    contractItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addContractItemStructData(
  Map<String, dynamic> firestoreData,
  ContractItemStruct? contractItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (contractItem == null) {
    return;
  }
  if (contractItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && contractItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final contractItemData =
      getContractItemFirestoreData(contractItem, forFieldValue);
  final nestedData =
      contractItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = contractItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getContractItemFirestoreData(
  ContractItemStruct? contractItem, [
  bool forFieldValue = false,
]) {
  if (contractItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(contractItem.toMap());

  // Add any Firestore field values
  contractItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getContractItemListFirestoreData(
  List<ContractItemStruct>? contractItems,
) =>
    contractItems?.map((e) => getContractItemFirestoreData(e, true)).toList() ??
    [];
