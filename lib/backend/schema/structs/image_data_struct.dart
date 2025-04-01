// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ImageDataStruct extends FFFirebaseStruct {
  ImageDataStruct({
    String? url,
    int? width,
    int? height,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _url = url,
        _width = width,
        _height = height,
        super(firestoreUtilData);

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

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

  static ImageDataStruct fromMap(Map<String, dynamic> data) => ImageDataStruct(
        url: data['url'] as String?,
        width: castToType<int>(data['width']),
        height: castToType<int>(data['height']),
      );

  static ImageDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ImageDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'url': _url,
        'width': _width,
        'height': _height,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'url': serializeParam(
          _url,
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
      }.withoutNulls;

  static ImageDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImageDataStruct(
        url: deserializeParam(
          data['url'],
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
      );

  @override
  String toString() => 'ImageDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImageDataStruct &&
        url == other.url &&
        width == other.width &&
        height == other.height;
  }

  @override
  int get hashCode => const ListEquality().hash([url, width, height]);
}

ImageDataStruct createImageDataStruct({
  String? url,
  int? width,
  int? height,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ImageDataStruct(
      url: url,
      width: width,
      height: height,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ImageDataStruct? updateImageDataStruct(
  ImageDataStruct? imageData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    imageData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addImageDataStructData(
  Map<String, dynamic> firestoreData,
  ImageDataStruct? imageData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (imageData == null) {
    return;
  }
  if (imageData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && imageData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final imageDataData = getImageDataFirestoreData(imageData, forFieldValue);
  final nestedData = imageDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = imageData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getImageDataFirestoreData(
  ImageDataStruct? imageData, [
  bool forFieldValue = false,
]) {
  if (imageData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(imageData.toMap());

  // Add any Firestore field values
  imageData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getImageDataListFirestoreData(
  List<ImageDataStruct>? imageDatas,
) =>
    imageDatas?.map((e) => getImageDataFirestoreData(e, true)).toList() ?? [];
