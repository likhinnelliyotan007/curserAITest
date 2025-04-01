import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "resume_url" field.
  String? _resumeUrl;
  String get resumeUrl => _resumeUrl ?? '';
  bool hasResumeUrl() => _resumeUrl != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "proffession" field.
  String? _proffession;
  String get proffession => _proffession ?? '';
  bool hasProffession() => _proffession != null;

  // "notice_period" field.
  int? _noticePeriod;
  int get noticePeriod => _noticePeriod ?? 0;
  bool hasNoticePeriod() => _noticePeriod != null;

  // "experience" field.
  int? _experience;
  int get experience => _experience ?? 0;
  bool hasExperience() => _experience != null;

  // "userType" field.
  UserType? _userType;
  UserType? get userType => _userType;
  bool hasUserType() => _userType != null;

  // "socialMedaia" field.
  UserSocialMediaInfoStruct? _socialMedaia;
  UserSocialMediaInfoStruct get socialMedaia =>
      _socialMedaia ?? UserSocialMediaInfoStruct();
  bool hasSocialMedaia() => _socialMedaia != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _resumeUrl = snapshotData['resume_url'] as String?;
    _address = snapshotData['address'] as String?;
    _proffession = snapshotData['proffession'] as String?;
    _noticePeriod = castToType<int>(snapshotData['notice_period']);
    _experience = castToType<int>(snapshotData['experience']);
    _userType = snapshotData['userType'] is UserType
        ? snapshotData['userType']
        : deserializeEnum<UserType>(snapshotData['userType']);
    _socialMedaia = snapshotData['socialMedaia'] is UserSocialMediaInfoStruct
        ? snapshotData['socialMedaia']
        : UserSocialMediaInfoStruct.maybeFromMap(snapshotData['socialMedaia']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? resumeUrl,
  String? address,
  String? proffession,
  int? noticePeriod,
  int? experience,
  UserType? userType,
  UserSocialMediaInfoStruct? socialMedaia,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'resume_url': resumeUrl,
      'address': address,
      'proffession': proffession,
      'notice_period': noticePeriod,
      'experience': experience,
      'userType': userType,
      'socialMedaia': UserSocialMediaInfoStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "socialMedaia" field.
  addUserSocialMediaInfoStructData(firestoreData, socialMedaia, 'socialMedaia');

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.resumeUrl == e2?.resumeUrl &&
        e1?.address == e2?.address &&
        e1?.proffession == e2?.proffession &&
        e1?.noticePeriod == e2?.noticePeriod &&
        e1?.experience == e2?.experience &&
        e1?.userType == e2?.userType &&
        e1?.socialMedaia == e2?.socialMedaia;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.resumeUrl,
        e?.address,
        e?.proffession,
        e?.noticePeriod,
        e?.experience,
        e?.userType,
        e?.socialMedaia
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
