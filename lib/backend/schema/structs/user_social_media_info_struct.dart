// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserSocialMediaInfoStruct extends FFFirebaseStruct {
  UserSocialMediaInfoStruct({
    String? link,
    int? id,
    String? icon,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _link = link,
        _id = id,
        _icon = icon,
        _name = name,
        super(firestoreUtilData);

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  set link(String? val) => _link = val;

  bool hasLink() => _link != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  set icon(String? val) => _icon = val;

  bool hasIcon() => _icon != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static UserSocialMediaInfoStruct fromMap(Map<String, dynamic> data) =>
      UserSocialMediaInfoStruct(
        link: data['link'] as String?,
        id: castToType<int>(data['id']),
        icon: data['icon'] as String?,
        name: data['name'] as String?,
      );

  static UserSocialMediaInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? UserSocialMediaInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'link': _link,
        'id': _id,
        'icon': _icon,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'link': serializeParam(
          _link,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'icon': serializeParam(
          _icon,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserSocialMediaInfoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserSocialMediaInfoStruct(
        link: deserializeParam(
          data['link'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        icon: deserializeParam(
          data['icon'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserSocialMediaInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserSocialMediaInfoStruct &&
        link == other.link &&
        id == other.id &&
        icon == other.icon &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([link, id, icon, name]);
}

UserSocialMediaInfoStruct createUserSocialMediaInfoStruct({
  String? link,
  int? id,
  String? icon,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserSocialMediaInfoStruct(
      link: link,
      id: id,
      icon: icon,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserSocialMediaInfoStruct? updateUserSocialMediaInfoStruct(
  UserSocialMediaInfoStruct? userSocialMediaInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userSocialMediaInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserSocialMediaInfoStructData(
  Map<String, dynamic> firestoreData,
  UserSocialMediaInfoStruct? userSocialMediaInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userSocialMediaInfo == null) {
    return;
  }
  if (userSocialMediaInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userSocialMediaInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userSocialMediaInfoData =
      getUserSocialMediaInfoFirestoreData(userSocialMediaInfo, forFieldValue);
  final nestedData =
      userSocialMediaInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      userSocialMediaInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserSocialMediaInfoFirestoreData(
  UserSocialMediaInfoStruct? userSocialMediaInfo, [
  bool forFieldValue = false,
]) {
  if (userSocialMediaInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userSocialMediaInfo.toMap());

  // Add any Firestore field values
  userSocialMediaInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserSocialMediaInfoListFirestoreData(
  List<UserSocialMediaInfoStruct>? userSocialMediaInfos,
) =>
    userSocialMediaInfos
        ?.map((e) => getUserSocialMediaInfoFirestoreData(e, true))
        .toList() ??
    [];
