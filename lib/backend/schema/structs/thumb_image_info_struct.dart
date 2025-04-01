// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ThumbImageInfoStruct extends FFFirebaseStruct {
  ThumbImageInfoStruct({
    ImageDataStruct? small,
    ImageDataStruct? large,
    ImageDataStruct? full,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _small = small,
        _large = large,
        _full = full,
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

  // "full" field.
  ImageDataStruct? _full;
  ImageDataStruct get full => _full ?? ImageDataStruct();
  set full(ImageDataStruct? val) => _full = val;

  void updateFull(Function(ImageDataStruct) updateFn) {
    updateFn(_full ??= ImageDataStruct());
  }

  bool hasFull() => _full != null;

  static ThumbImageInfoStruct fromMap(Map<String, dynamic> data) =>
      ThumbImageInfoStruct(
        small: data['small'] is ImageDataStruct
            ? data['small']
            : ImageDataStruct.maybeFromMap(data['small']),
        large: data['large'] is ImageDataStruct
            ? data['large']
            : ImageDataStruct.maybeFromMap(data['large']),
        full: data['full'] is ImageDataStruct
            ? data['full']
            : ImageDataStruct.maybeFromMap(data['full']),
      );

  static ThumbImageInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? ThumbImageInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'small': _small?.toMap(),
        'large': _large?.toMap(),
        'full': _full?.toMap(),
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
        'full': serializeParam(
          _full,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ThumbImageInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ThumbImageInfoStruct(
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
        full: deserializeStructParam(
          data['full'],
          ParamType.DataStruct,
          false,
          structBuilder: ImageDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ThumbImageInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ThumbImageInfoStruct &&
        small == other.small &&
        large == other.large &&
        full == other.full;
  }

  @override
  int get hashCode => const ListEquality().hash([small, large, full]);
}

ThumbImageInfoStruct createThumbImageInfoStruct({
  ImageDataStruct? small,
  ImageDataStruct? large,
  ImageDataStruct? full,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ThumbImageInfoStruct(
      small: small ?? (clearUnsetFields ? ImageDataStruct() : null),
      large: large ?? (clearUnsetFields ? ImageDataStruct() : null),
      full: full ?? (clearUnsetFields ? ImageDataStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ThumbImageInfoStruct? updateThumbImageInfoStruct(
  ThumbImageInfoStruct? thumbImageInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    thumbImageInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addThumbImageInfoStructData(
  Map<String, dynamic> firestoreData,
  ThumbImageInfoStruct? thumbImageInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (thumbImageInfo == null) {
    return;
  }
  if (thumbImageInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && thumbImageInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final thumbImageInfoData =
      getThumbImageInfoFirestoreData(thumbImageInfo, forFieldValue);
  final nestedData =
      thumbImageInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = thumbImageInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getThumbImageInfoFirestoreData(
  ThumbImageInfoStruct? thumbImageInfo, [
  bool forFieldValue = false,
]) {
  if (thumbImageInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(thumbImageInfo.toMap());

  // Handle nested data for "small" field.
  addImageDataStructData(
    firestoreData,
    thumbImageInfo.hasSmall() ? thumbImageInfo.small : null,
    'small',
    forFieldValue,
  );

  // Handle nested data for "large" field.
  addImageDataStructData(
    firestoreData,
    thumbImageInfo.hasLarge() ? thumbImageInfo.large : null,
    'large',
    forFieldValue,
  );

  // Handle nested data for "full" field.
  addImageDataStructData(
    firestoreData,
    thumbImageInfo.hasFull() ? thumbImageInfo.full : null,
    'full',
    forFieldValue,
  );

  // Add any Firestore field values
  thumbImageInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getThumbImageInfoListFirestoreData(
  List<ThumbImageInfoStruct>? thumbImageInfos,
) =>
    thumbImageInfos
        ?.map((e) => getThumbImageInfoFirestoreData(e, true))
        .toList() ??
    [];
