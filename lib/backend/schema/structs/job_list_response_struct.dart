// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobListResponseStruct extends FFFirebaseStruct {
  JobListResponseStruct({
    List<JobStruct>? records,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _records = records,
        super(firestoreUtilData);

  // "records" field.
  List<JobStruct>? _records;
  List<JobStruct> get records => _records ?? const [];
  set records(List<JobStruct>? val) => _records = val;

  void updateRecords(Function(List<JobStruct>) updateFn) {
    updateFn(_records ??= []);
  }

  bool hasRecords() => _records != null;

  static JobListResponseStruct fromMap(Map<String, dynamic> data) =>
      JobListResponseStruct(
        records: getStructList(
          data['records'],
          JobStruct.fromMap,
        ),
      );

  static JobListResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? JobListResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'records': _records?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'records': serializeParam(
          _records,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static JobListResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      JobListResponseStruct(
        records: deserializeStructParam<JobStruct>(
          data['records'],
          ParamType.DataStruct,
          true,
          structBuilder: JobStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'JobListResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is JobListResponseStruct &&
        listEquality.equals(records, other.records);
  }

  @override
  int get hashCode => const ListEquality().hash([records]);
}

JobListResponseStruct createJobListResponseStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    JobListResponseStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

JobListResponseStruct? updateJobListResponseStruct(
  JobListResponseStruct? jobListResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    jobListResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addJobListResponseStructData(
  Map<String, dynamic> firestoreData,
  JobListResponseStruct? jobListResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (jobListResponse == null) {
    return;
  }
  if (jobListResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && jobListResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final jobListResponseData =
      getJobListResponseFirestoreData(jobListResponse, forFieldValue);
  final nestedData =
      jobListResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = jobListResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getJobListResponseFirestoreData(
  JobListResponseStruct? jobListResponse, [
  bool forFieldValue = false,
]) {
  if (jobListResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(jobListResponse.toMap());

  // Add any Firestore field values
  jobListResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getJobListResponseListFirestoreData(
  List<JobListResponseStruct>? jobListResponses,
) =>
    jobListResponses
        ?.map((e) => getJobListResponseFirestoreData(e, true))
        .toList() ??
    [];
