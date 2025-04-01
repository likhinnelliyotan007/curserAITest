// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyLogoStruct extends FFFirebaseStruct {
  CompanyLogoStruct({
    String? id,
    int? width,
    int? height,
    String? url,
    String? filename,
    int? size,
    String? type,
    ThumbImageInfoStruct? thumbnails,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _width = width,
        _height = height,
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

  // "width" field.
  int? _width;
  int get width => _width ?? 0;
  set width(int? val) => _width = val;

  void incrementWidth(int amount) => width = width + amount;

  bool hasWidth() => _width != null;

  // "height" field.
  int? _height;
  int get height => _height ?? 0;
  set height(int? val) => _height = val;

  void incrementHeight(int amount) => height = height + amount;

  bool hasHeight() => _height != null;

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
  ThumbImageInfoStruct? _thumbnails;
  ThumbImageInfoStruct get thumbnails => _thumbnails ?? ThumbImageInfoStruct();
  set thumbnails(ThumbImageInfoStruct? val) => _thumbnails = val;

  void updateThumbnails(Function(ThumbImageInfoStruct) updateFn) {
    updateFn(_thumbnails ??= ThumbImageInfoStruct());
  }

  bool hasThumbnails() => _thumbnails != null;

  static CompanyLogoStruct fromMap(Map<String, dynamic> data) =>
      CompanyLogoStruct(
        id: data['id'] as String?,
        width: castToType<int>(data['width']),
        height: castToType<int>(data['height']),
        url: data['url'] as String?,
        filename: data['filename'] as String?,
        size: castToType<int>(data['size']),
        type: data['type'] as String?,
        thumbnails: data['thumbnails'] is ThumbImageInfoStruct
            ? data['thumbnails']
            : ThumbImageInfoStruct.maybeFromMap(data['thumbnails']),
      );

  static CompanyLogoStruct? maybeFromMap(dynamic data) => data is Map
      ? CompanyLogoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'width': _width,
        'height': _height,
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
        'width': serializeParam(
          _width,
          ParamType.int,
        ),
        'height': serializeParam(
          _height,
          ParamType.int,
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

  static CompanyLogoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CompanyLogoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        width: deserializeParam(
          data['width'],
          ParamType.int,
          false,
        ),
        height: deserializeParam(
          data['height'],
          ParamType.int,
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
          structBuilder: ThumbImageInfoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CompanyLogoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CompanyLogoStruct &&
        id == other.id &&
        width == other.width &&
        height == other.height &&
        url == other.url &&
        filename == other.filename &&
        size == other.size &&
        type == other.type &&
        thumbnails == other.thumbnails;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, width, height, url, filename, size, type, thumbnails]);
}

CompanyLogoStruct createCompanyLogoStruct({
  String? id,
  int? width,
  int? height,
  String? url,
  String? filename,
  int? size,
  String? type,
  ThumbImageInfoStruct? thumbnails,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CompanyLogoStruct(
      id: id,
      width: width,
      height: height,
      url: url,
      filename: filename,
      size: size,
      type: type,
      thumbnails:
          thumbnails ?? (clearUnsetFields ? ThumbImageInfoStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CompanyLogoStruct? updateCompanyLogoStruct(
  CompanyLogoStruct? companyLogo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    companyLogo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCompanyLogoStructData(
  Map<String, dynamic> firestoreData,
  CompanyLogoStruct? companyLogo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (companyLogo == null) {
    return;
  }
  if (companyLogo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && companyLogo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final companyLogoData =
      getCompanyLogoFirestoreData(companyLogo, forFieldValue);
  final nestedData =
      companyLogoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = companyLogo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCompanyLogoFirestoreData(
  CompanyLogoStruct? companyLogo, [
  bool forFieldValue = false,
]) {
  if (companyLogo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(companyLogo.toMap());

  // Handle nested data for "thumbnails" field.
  addThumbImageInfoStructData(
    firestoreData,
    companyLogo.hasThumbnails() ? companyLogo.thumbnails : null,
    'thumbnails',
    forFieldValue,
  );

  // Add any Firestore field values
  companyLogo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCompanyLogoListFirestoreData(
  List<CompanyLogoStruct>? companyLogos,
) =>
    companyLogos?.map((e) => getCompanyLogoFirestoreData(e, true)).toList() ??
    [];
