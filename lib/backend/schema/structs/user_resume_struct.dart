// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserResumeStruct extends FFFirebaseStruct {
  UserResumeStruct({
    String? id,
    String? url,
    String? filename,
    int? size,
    String? type,
    UserResumeThumbnailsStruct? thumbnails,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _url = url,
        _filename = filename,
        _size = size,
        _type = type,
        _thumbnails = thumbnails,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  // "filename" field.
  String? _filename;
  String get filename => _filename ?? '';
  set filename(String? val) => _filename = val;

  bool hasFilename() => _filename != null;

  // "size" field.
  int? _size;
  int get size => _size ?? 0;
  set size(int? val) => _size = val;

  void incrementSize(int amount) => size = size + amount;

  bool hasSize() => _size != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "thumbnails" field.
  UserResumeThumbnailsStruct? _thumbnails;
  UserResumeThumbnailsStruct get thumbnails =>
      _thumbnails ?? UserResumeThumbnailsStruct();
  set thumbnails(UserResumeThumbnailsStruct? val) => _thumbnails = val;

  void updateThumbnails(Function(UserResumeThumbnailsStruct) updateFn) {
    updateFn(_thumbnails ??= UserResumeThumbnailsStruct());
  }

  bool hasThumbnails() => _thumbnails != null;

  static UserResumeStruct fromMap(Map<String, dynamic> data) =>
      UserResumeStruct(
        id: data['id'] as String?,
        url: data['url'] as String?,
        filename: data['filename'] as String?,
        size: castToType<int>(data['size']),
        type: data['type'] as String?,
        thumbnails: data['thumbnails'] is UserResumeThumbnailsStruct
            ? data['thumbnails']
            : UserResumeThumbnailsStruct.maybeFromMap(data['thumbnails']),
      );

  static UserResumeStruct? maybeFromMap(dynamic data) => data is Map
      ? UserResumeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'url': _url,
        'filename': _filename,
        'size': _size,
        'type': _type,
        'thumbnails': _thumbnails?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'filename': serializeParam(
          _filename,
          ParamType.String,
        ),
        'size': serializeParam(
          _size,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'thumbnails': serializeParam(
          _thumbnails,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UserResumeStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserResumeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        filename: deserializeParam(
          data['filename'],
          ParamType.String,
          false,
        ),
        size: deserializeParam(
          data['size'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        thumbnails: deserializeStructParam(
          data['thumbnails'],
          ParamType.DataStruct,
          false,
          structBuilder: UserResumeThumbnailsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserResumeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserResumeStruct &&
        id == other.id &&
        url == other.url &&
        filename == other.filename &&
        size == other.size &&
        type == other.type &&
        thumbnails == other.thumbnails;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, url, filename, size, type, thumbnails]);
}

UserResumeStruct createUserResumeStruct({
  String? id,
  String? url,
  String? filename,
  int? size,
  String? type,
  UserResumeThumbnailsStruct? thumbnails,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserResumeStruct(
      id: id,
      url: url,
      filename: filename,
      size: size,
      type: type,
      thumbnails: thumbnails ??
          (clearUnsetFields ? UserResumeThumbnailsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserResumeStruct? updateUserResumeStruct(
  UserResumeStruct? userResume, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userResume
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserResumeStructData(
  Map<String, dynamic> firestoreData,
  UserResumeStruct? userResume,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userResume == null) {
    return;
  }
  if (userResume.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userResume.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userResumeData = getUserResumeFirestoreData(userResume, forFieldValue);
  final nestedData = userResumeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userResume.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserResumeFirestoreData(
  UserResumeStruct? userResume, [
  bool forFieldValue = false,
]) {
  if (userResume == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userResume.toMap());

  // Handle nested data for "thumbnails" field.
  addUserResumeThumbnailsStructData(
    firestoreData,
    userResume.hasThumbnails() ? userResume.thumbnails : null,
    'thumbnails',
    forFieldValue,
  );

  // Add any Firestore field values
  userResume.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserResumeListFirestoreData(
  List<UserResumeStruct>? userResumes,
) =>
    userResumes?.map((e) => getUserResumeFirestoreData(e, true)).toList() ?? [];
