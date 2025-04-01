import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobSeekerDetailsRecord extends FirestoreRecord {
  JobSeekerDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  bool hasProfession() => _profession != null;

  // "experience" field.
  int? _experience;
  int get experience => _experience ?? 0;
  bool hasExperience() => _experience != null;

  // "noticePeriod" field.
  int? _noticePeriod;
  int get noticePeriod => _noticePeriod ?? 0;
  bool hasNoticePeriod() => _noticePeriod != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "summary" field.
  String? _summary;
  String get summary => _summary ?? '';
  bool hasSummary() => _summary != null;

  // "resume" field.
  String? _resume;
  String get resume => _resume ?? '';
  bool hasResume() => _resume != null;

  // "skills" field.
  List<String>? _skills;
  List<String> get skills => _skills ?? const [];
  bool hasSkills() => _skills != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _profession = snapshotData['profession'] as String?;
    _experience = castToType<int>(snapshotData['experience']);
    _noticePeriod = castToType<int>(snapshotData['noticePeriod']);
    _address = snapshotData['address'] as String?;
    _summary = snapshotData['summary'] as String?;
    _resume = snapshotData['resume'] as String?;
    _skills = getDataList(snapshotData['skills']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('jobSeekerDetails')
          : FirebaseFirestore.instance.collectionGroup('jobSeekerDetails');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('jobSeekerDetails').doc(id);

  static Stream<JobSeekerDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobSeekerDetailsRecord.fromSnapshot(s));

  static Future<JobSeekerDetailsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => JobSeekerDetailsRecord.fromSnapshot(s));

  static JobSeekerDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobSeekerDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobSeekerDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobSeekerDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobSeekerDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobSeekerDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobSeekerDetailsRecordData({
  String? profession,
  int? experience,
  int? noticePeriod,
  String? address,
  String? summary,
  String? resume,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'profession': profession,
      'experience': experience,
      'noticePeriod': noticePeriod,
      'address': address,
      'summary': summary,
      'resume': resume,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobSeekerDetailsRecordDocumentEquality
    implements Equality<JobSeekerDetailsRecord> {
  const JobSeekerDetailsRecordDocumentEquality();

  @override
  bool equals(JobSeekerDetailsRecord? e1, JobSeekerDetailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.profession == e2?.profession &&
        e1?.experience == e2?.experience &&
        e1?.noticePeriod == e2?.noticePeriod &&
        e1?.address == e2?.address &&
        e1?.summary == e2?.summary &&
        e1?.resume == e2?.resume &&
        listEquality.equals(e1?.skills, e2?.skills);
  }

  @override
  int hash(JobSeekerDetailsRecord? e) => const ListEquality().hash([
        e?.profession,
        e?.experience,
        e?.noticePeriod,
        e?.address,
        e?.summary,
        e?.resume,
        e?.skills
      ]);

  @override
  bool isValidKey(Object? o) => o is JobSeekerDetailsRecord;
}
