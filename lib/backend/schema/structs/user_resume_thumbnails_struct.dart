// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserResumeThumbnailsStruct extends FFFirebaseStruct {
  UserResumeThumbnailsStruct({
    ImageDataStruct? small,
    ImageDataStruct? large,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _small = small,
        _large = large,
        super(firestoreUtilData);

  // "small" field.
  ImageDataStruct? _small;
  ImageDataStruct get small => _small ?? ImageDataStruct();
  set small(ImageDataStruct? val) => _small = val;

  void updateSmall(Function(ImageDataStruct) updateFn) {
    updateFn(_small ??= ImageDataStruct());
  }

  bool hasSmall() => _small != null;

  // "large" field.
  ImageDataStruct? _large;
  ImageDataStruct get large => _large ?? ImageDataStruct();
  set large(ImageDataStruct? val) => _large = val;

  void updateLarge(Function(ImageDataStruct) updateFn) {
    updateFn(_large ??= ImageDataStruct());
  }

  bool hasLarge() => _large != null;

  static UserResumeThumbnailsStruct fromMap(Map<String, dynamic> data) =>
      UserResumeThumbnailsStruct(
        small: data['small'] is ImageDataStruct
            ? data['small']
            : ImageDataStruct.maybeFromMap(data['small']),
        large: data['large'] is ImageDataStruct
            ? data['large']
            : ImageDataStruct.maybeFromMap(data['large']),
      );

  static UserResumeThumbnailsStruct? maybeFromMap(dynamic data) => data is Map
      ? UserResumeThumbnailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'small': _small?.toMap(),
        'large': _large?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'small': serializeParam(
          _small,
          ParamType.DataStruct,
        ),
        'large': serializeParam(
          _large,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UserResumeThumbnailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserResumeThumbnailsStruct(
        small: deserializeStructParam(
          data['small'],
          ParamType.DataStruct,
          false,
          structBuilder: ImageDataStruct.fromSerializableMap,
        ),
        large: deserializeStructParam(
          data['large'],
          ParamType.DataStruct,
          false,
          structBuilder: ImageDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserResumeThumbnailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserResumeThumbnailsStruct &&
        small == other.small &&
        large == other.large;
  }

  @override
  int get hashCode => const ListEquality().hash([small, large]);
}

UserResumeThumbnailsStruct createUserResumeThumbnailsStruct({
  ImageDataStruct? small,
  ImageDataStruct? large,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserResumeThumbnailsStruct(
      small: small ?? (clearUnsetFields ? ImageDataStruct() : null),
      large: large ?? (clearUnsetFields ? ImageDataStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserResumeThumbnailsStruct? updateUserResumeThumbnailsStruct(
  UserResumeThumbnailsStruct? userResumeThumbnails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userResumeThumbnails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserResumeThumbnailsStructData(
  Map<String, dynamic> firestoreData,
  UserResumeThumbnailsStruct? userResumeThumbnails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userResumeThumbnails == null) {
    return;
  }
  if (userResumeThumbnails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userResumeThumbnails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userResumeThumbnailsData =
      getUserResumeThumbnailsFirestoreData(userResumeThumbnails, forFieldValue);
  final nestedData =
      userResumeThumbnailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      userResumeThumbnails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserResumeThumbnailsFirestoreData(
  UserResumeThumbnailsStruct? userResumeThumbnails, [
  bool forFieldValue = false,
]) {
  if (userResumeThumbnails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userResumeThumbnails.toMap());

  // Handle nested data for "small" field.
  addImageDataStructData(
    firestoreData,
    userResumeThumbnails.hasSmall() ? userResumeThumbnails.small : null,
    'small',
    forFieldValue,
  );

  // Handle nested data for "large" field.
  addImageDataStructData(
    firestoreData,
    userResumeThumbnails.hasLarge() ? userResumeThumbnails.large : null,
    'large',
    forFieldValue,
  );

  // Add any Firestore field values
  userResumeThumbnails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserResumeThumbnailsListFirestoreData(
  List<UserResumeThumbnailsStruct>? userResumeThumbnailss,
) =>
    userResumeThumbnailss
        ?.map((e) => getUserResumeThumbnailsFirestoreData(e, true))
        .toList() ??
    [];
