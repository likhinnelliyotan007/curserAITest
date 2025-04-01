import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobProviderDetailsRecord extends FirestoreRecord {
  JobProviderDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "size" field.
  int? _size;
  int get size => _size ?? 0;
  bool hasSize() => _size != null;

  // "summary" field.
  String? _summary;
  String get summary => _summary ?? '';
  bool hasSummary() => _summary != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "industry" field.
  String? _industry;
  String get industry => _industry ?? '';
  bool hasIndustry() => _industry != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _companyName = snapshotData['companyName'] as String?;
    _size = castToType<int>(snapshotData['size']);
    _summary = snapshotData['summary'] as String?;
    _address = snapshotData['address'] as String?;
    _industry = snapshotData['industry'] as String?;
    _position = snapshotData['position'] as String?;
    _website = snapshotData['website'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('jobProviderDetails')
          : FirebaseFirestore.instance.collectionGroup('jobProviderDetails');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('jobProviderDetails').doc(id);

  static Stream<JobProviderDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobProviderDetailsRecord.fromSnapshot(s));

  static Future<JobProviderDetailsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => JobProviderDetailsRecord.fromSnapshot(s));

  static JobProviderDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobProviderDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobProviderDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobProviderDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobProviderDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobProviderDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobProviderDetailsRecordData({
  String? companyName,
  int? size,
  String? summary,
  String? address,
  String? industry,
  String? position,
  String? website,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'companyName': companyName,
      'size': size,
      'summary': summary,
      'address': address,
      'industry': industry,
      'position': position,
      'website': website,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobProviderDetailsRecordDocumentEquality
    implements Equality<JobProviderDetailsRecord> {
  const JobProviderDetailsRecordDocumentEquality();

  @override
  bool equals(JobProviderDetailsRecord? e1, JobProviderDetailsRecord? e2) {
    return e1?.companyName == e2?.companyName &&
        e1?.size == e2?.size &&
        e1?.summary == e2?.summary &&
        e1?.address == e2?.address &&
        e1?.industry == e2?.industry &&
        e1?.position == e2?.position &&
        e1?.website == e2?.website;
  }

  @override
  int hash(JobProviderDetailsRecord? e) => const ListEquality().hash([
        e?.companyName,
        e?.size,
        e?.summary,
        e?.address,
        e?.industry,
        e?.position,
        e?.website
      ]);

  @override
  bool isValidKey(Object? o) => o is JobProviderDetailsRecord;
}
