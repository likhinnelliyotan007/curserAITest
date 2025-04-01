// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobStruct extends FFFirebaseStruct {
  JobStruct({
    String? id,
    String? createdTime,
    JobInfoStruct? fields,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _createdTime = createdTime,
        _fields = fields,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "createdTime" field.
  String? _createdTime;
  String get createdTime => _createdTime ?? '';
  set createdTime(String? val) => _createdTime = val;

  bool hasCreatedTime() => _createdTime != null;

  // "fields" field.
  JobInfoStruct? _fields;
  JobInfoStruct get fields => _fields ?? JobInfoStruct();
  set fields(JobInfoStruct? val) => _fields = val;

  void updateFields(Function(JobInfoStruct) updateFn) {
    updateFn(_fields ??= JobInfoStruct());
  }

  bool hasFields() => _fields != null;

  static JobStruct fromMap(Map<String, dynamic> data) => JobStruct(
        id: data['id'] as String?,
        createdTime: data['createdTime'] as String?,
        fields: data['fields'] is JobInfoStruct
            ? data['fields']
            : JobInfoStruct.maybeFromMap(data['fields']),
      );

  static JobStruct? maybeFromMap(dynamic data) =>
      data is Map ? JobStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'createdTime': _createdTime,
        'fields': _fields?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'createdTime': serializeParam(
          _createdTime,
          ParamType.String,
        ),
        'fields': serializeParam(
          _fields,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static JobStruct fromSerializableMap(Map<String, dynamic> data) => JobStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createdTime: deserializeParam(
          data['createdTime'],
          ParamType.String,
          false,
        ),
        fields: deserializeStructParam(
          data['fields'],
          ParamType.DataStruct,
          false,
          structBuilder: JobInfoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'JobStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is JobStruct &&
        id == other.id &&
        createdTime == other.createdTime &&
        fields == other.fields;
  }

  @override
  int get hashCode => const ListEquality().hash([id, createdTime, fields]);
}

JobStruct createJobStruct({
  String? id,
  String? createdTime,
  JobInfoStruct? fields,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    JobStruct(
      id: id,
      createdTime: createdTime,
      fields: fields ?? (clearUnsetFields ? JobInfoStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

JobStruct? updateJobStruct(
  JobStruct? job, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    job
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addJobStructData(
  Map<String, dynamic> firestoreData,
  JobStruct? job,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (job == null) {
    return;
  }
  if (job.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && job.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final jobData = getJobFirestoreData(job, forFieldValue);
  final nestedData = jobData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = job.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getJobFirestoreData(
  JobStruct? job, [
  bool forFieldValue = false,
]) {
  if (job == null) {
    return {};
  }
  final firestoreData = mapToFirestore(job.toMap());

  // Handle nested data for "fields" field.
  addJobInfoStructData(
    firestoreData,
    job.hasFields() ? job.fields : null,
    'fields',
    forFieldValue,
  );

  // Add any Firestore field values
  job.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getJobListFirestoreData(
  List<JobStruct>? jobs,
) =>
    jobs?.map((e) => getJobFirestoreData(e, true)).toList() ?? [];
