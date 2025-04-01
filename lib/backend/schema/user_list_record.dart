import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserListRecord extends FirestoreRecord {
  UserListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "userType" field.
  String? _userType;
  String get userType => _userType ?? '';
  bool hasUserType() => _userType != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "profile_image" field.
  String? _profileImage;
  String get profileImage => _profileImage ?? '';
  bool hasProfileImage() => _profileImage != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _userType = snapshotData['userType'] as String?;
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _profileImage = snapshotData['profile_image'] as String?;
    _id = castToType<int>(snapshotData['id']);
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userList');

  static Stream<UserListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserListRecord.fromSnapshot(s));

  static Future<UserListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserListRecord.fromSnapshot(s));

  static UserListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserListRecordData({
  String? name,
  String? userType,
  String? email,
  String? phoneNumber,
  String? profileImage,
  int? id,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'userType': userType,
      'email': email,
      'phone_number': phoneNumber,
      'profile_image': profileImage,
      'id': id,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserListRecordDocumentEquality implements Equality<UserListRecord> {
  const UserListRecordDocumentEquality();

  @override
  bool equals(UserListRecord? e1, UserListRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.userType == e2?.userType &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.profileImage == e2?.profileImage &&
        e1?.id == e2?.id &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(UserListRecord? e) => const ListEquality().hash([
        e?.name,
        e?.userType,
        e?.email,
        e?.phoneNumber,
        e?.profileImage,
        e?.id,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is UserListRecord;
}
