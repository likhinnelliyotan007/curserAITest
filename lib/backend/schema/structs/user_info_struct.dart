// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserInfoStruct extends FFFirebaseStruct {
  UserInfoStruct({
    List<UserModelStruct>? records,
    String? offset,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _records = records,
        _offset = offset,
        super(firestoreUtilData);

  // "records" field.
  List<UserModelStruct>? _records;
  List<UserModelStruct> get records => _records ?? const [];
  set records(List<UserModelStruct>? val) => _records = val;

  void updateRecords(Function(List<UserModelStruct>) updateFn) {
    updateFn(_records ??= []);
  }

  bool hasRecords() => _records != null;

  // "offset" field.
  String? _offset;
  String get offset => _offset ?? '';
  set offset(String? val) => _offset = val;

  bool hasOffset() => _offset != null;

  static UserInfoStruct fromMap(Map<String, dynamic> data) => UserInfoStruct(
        records: getStructList(
          data['records'],
          UserModelStruct.fromMap,
        ),
        offset: data['offset'] as String?,
      );

  static UserInfoStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserInfoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'records': _records?.map((e) => e.toMap()).toList(),
        'offset': _offset,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'records': serializeParam(
          _records,
          ParamType.DataStruct,
          isList: true,
        ),
        'offset': serializeParam(
          _offset,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserInfoStruct(
        records: deserializeStructParam<UserModelStruct>(
          data['records'],
          ParamType.DataStruct,
          true,
          structBuilder: UserModelStruct.fromSerializableMap,
        ),
        offset: deserializeParam(
          data['offset'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserInfoStruct &&
        listEquality.equals(records, other.records) &&
        offset == other.offset;
  }

  @override
  int get hashCode => const ListEquality().hash([records, offset]);
}

UserInfoStruct createUserInfoStruct({
  String? offset,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserInfoStruct(
      offset: offset,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserInfoStruct? updateUserInfoStruct(
  UserInfoStruct? userInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserInfoStructData(
  Map<String, dynamic> firestoreData,
  UserInfoStruct? userInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userInfo == null) {
    return;
  }
  if (userInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userInfoData = getUserInfoFirestoreData(userInfo, forFieldValue);
  final nestedData = userInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserInfoFirestoreData(
  UserInfoStruct? userInfo, [
  bool forFieldValue = false,
]) {
  if (userInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userInfo.toMap());

  // Add any Firestore field values
  userInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserInfoListFirestoreData(
  List<UserInfoStruct>? userInfos,
) =>
    userInfos?.map((e) => getUserInfoFirestoreData(e, true)).toList() ?? [];
