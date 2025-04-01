// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserModelStruct extends FFFirebaseStruct {
  UserModelStruct({
    String? id,
    String? createdTime,
    String? idUser,
    String? name,
    String? address,
    String? phone,
    List<UserResumeStruct>? resume,
    List<String>? skills,
    List<String>? skillTitle,
    String? profilePic,
    int? noticePeriod,
    String? profileSummery,
    List<String>? applications,
    String? uid,
    String? currentCompany,
    String? currentPosition,
    int? totalExperience,
    bool? notificationEmail,
    bool? pushNotification,
    List<String>? favoriteJobs,
    String? userType,
    List<String>? socialMedia,
    List<String>? socialMediaLink,
    List<String>? socialName,
    String? email,
    List<String>? jobs2,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _createdTime = createdTime,
        _idUser = idUser,
        _name = name,
        _address = address,
        _phone = phone,
        _resume = resume,
        _skills = skills,
        _skillTitle = skillTitle,
        _profilePic = profilePic,
        _noticePeriod = noticePeriod,
        _profileSummery = profileSummery,
        _applications = applications,
        _uid = uid,
        _currentCompany = currentCompany,
        _currentPosition = currentPosition,
        _totalExperience = totalExperience,
        _notificationEmail = notificationEmail,
        _pushNotification = pushNotification,
        _favoriteJobs = favoriteJobs,
        _userType = userType,
        _socialMedia = socialMedia,
        _socialMediaLink = socialMediaLink,
        _socialName = socialName,
        _email = email,
        _jobs2 = jobs2,
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

  // "id_user" field.
  String? _idUser;
  String get idUser => _idUser ?? '';
  set idUser(String? val) => _idUser = val;

  bool hasIdUser() => _idUser != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "resume" field.
  List<UserResumeStruct>? _resume;
  List<UserResumeStruct> get resume => _resume ?? const [];
  set resume(List<UserResumeStruct>? val) => _resume = val;

  void updateResume(Function(List<UserResumeStruct>) updateFn) {
    updateFn(_resume ??= []);
  }

  bool hasResume() => _resume != null;

  // "skills" field.
  List<String>? _skills;
  List<String> get skills => _skills ?? const [];
  set skills(List<String>? val) => _skills = val;

  void updateSkills(Function(List<String>) updateFn) {
    updateFn(_skills ??= []);
  }

  bool hasSkills() => _skills != null;

  // "skill_title" field.
  List<String>? _skillTitle;
  List<String> get skillTitle => _skillTitle ?? const [];
  set skillTitle(List<String>? val) => _skillTitle = val;

  void updateSkillTitle(Function(List<String>) updateFn) {
    updateFn(_skillTitle ??= []);
  }

  bool hasSkillTitle() => _skillTitle != null;

  // "profile_pic" field.
  String? _profilePic;
  String get profilePic => _profilePic ?? '';
  set profilePic(String? val) => _profilePic = val;

  bool hasProfilePic() => _profilePic != null;

  // "notice_period" field.
  int? _noticePeriod;
  int get noticePeriod => _noticePeriod ?? 0;
  set noticePeriod(int? val) => _noticePeriod = val;

  void incrementNoticePeriod(int amount) =>
      noticePeriod = noticePeriod + amount;

  bool hasNoticePeriod() => _noticePeriod != null;

  // "profile_summery" field.
  String? _profileSummery;
  String get profileSummery => _profileSummery ?? '';
  set profileSummery(String? val) => _profileSummery = val;

  bool hasProfileSummery() => _profileSummery != null;

  // "applications" field.
  List<String>? _applications;
  List<String> get applications => _applications ?? const [];
  set applications(List<String>? val) => _applications = val;

  void updateApplications(Function(List<String>) updateFn) {
    updateFn(_applications ??= []);
  }

  bool hasApplications() => _applications != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "current_company" field.
  String? _currentCompany;
  String get currentCompany => _currentCompany ?? '';
  set currentCompany(String? val) => _currentCompany = val;

  bool hasCurrentCompany() => _currentCompany != null;

  // "current_position" field.
  String? _currentPosition;
  String get currentPosition => _currentPosition ?? '';
  set currentPosition(String? val) => _currentPosition = val;

  bool hasCurrentPosition() => _currentPosition != null;

  // "total_experience" field.
  int? _totalExperience;
  int get totalExperience => _totalExperience ?? 0;
  set totalExperience(int? val) => _totalExperience = val;

  void incrementTotalExperience(int amount) =>
      totalExperience = totalExperience + amount;

  bool hasTotalExperience() => _totalExperience != null;

  // "notification_email" field.
  bool? _notificationEmail;
  bool get notificationEmail => _notificationEmail ?? false;
  set notificationEmail(bool? val) => _notificationEmail = val;

  bool hasNotificationEmail() => _notificationEmail != null;

  // "push_notification" field.
  bool? _pushNotification;
  bool get pushNotification => _pushNotification ?? false;
  set pushNotification(bool? val) => _pushNotification = val;

  bool hasPushNotification() => _pushNotification != null;

  // "favorite_jobs" field.
  List<String>? _favoriteJobs;
  List<String> get favoriteJobs => _favoriteJobs ?? const [];
  set favoriteJobs(List<String>? val) => _favoriteJobs = val;

  void updateFavoriteJobs(Function(List<String>) updateFn) {
    updateFn(_favoriteJobs ??= []);
  }

  bool hasFavoriteJobs() => _favoriteJobs != null;

  // "userType" field.
  String? _userType;
  String get userType => _userType ?? '';
  set userType(String? val) => _userType = val;

  bool hasUserType() => _userType != null;

  // "social_media" field.
  List<String>? _socialMedia;
  List<String> get socialMedia => _socialMedia ?? const [];
  set socialMedia(List<String>? val) => _socialMedia = val;

  void updateSocialMedia(Function(List<String>) updateFn) {
    updateFn(_socialMedia ??= []);
  }

  bool hasSocialMedia() => _socialMedia != null;

  // "social_media_link" field.
  List<String>? _socialMediaLink;
  List<String> get socialMediaLink => _socialMediaLink ?? const [];
  set socialMediaLink(List<String>? val) => _socialMediaLink = val;

  void updateSocialMediaLink(Function(List<String>) updateFn) {
    updateFn(_socialMediaLink ??= []);
  }

  bool hasSocialMediaLink() => _socialMediaLink != null;

  // "social_name" field.
  List<String>? _socialName;
  List<String> get socialName => _socialName ?? const [];
  set socialName(List<String>? val) => _socialName = val;

  void updateSocialName(Function(List<String>) updateFn) {
    updateFn(_socialName ??= []);
  }

  bool hasSocialName() => _socialName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "Jobs2" field.
  List<String>? _jobs2;
  List<String> get jobs2 => _jobs2 ?? const [];
  set jobs2(List<String>? val) => _jobs2 = val;

  void updateJobs2(Function(List<String>) updateFn) {
    updateFn(_jobs2 ??= []);
  }

  bool hasJobs2() => _jobs2 != null;

  static UserModelStruct fromMap(Map<String, dynamic> data) => UserModelStruct(
        id: data['id'] as String?,
        createdTime: data['createdTime'] as String?,
        idUser: data['id_user'] as String?,
        name: data['name'] as String?,
        address: data['address'] as String?,
        phone: data['phone'] as String?,
        resume: getStructList(
          data['resume'],
          UserResumeStruct.fromMap,
        ),
        skills: getDataList(data['skills']),
        skillTitle: getDataList(data['skill_title']),
        profilePic: data['profile_pic'] as String?,
        noticePeriod: castToType<int>(data['notice_period']),
        profileSummery: data['profile_summery'] as String?,
        applications: getDataList(data['applications']),
        uid: data['uid'] as String?,
        currentCompany: data['current_company'] as String?,
        currentPosition: data['current_position'] as String?,
        totalExperience: castToType<int>(data['total_experience']),
        notificationEmail: data['notification_email'] as bool?,
        pushNotification: data['push_notification'] as bool?,
        favoriteJobs: getDataList(data['favorite_jobs']),
        userType: data['userType'] as String?,
        socialMedia: getDataList(data['social_media']),
        socialMediaLink: getDataList(data['social_media_link']),
        socialName: getDataList(data['social_name']),
        email: data['email'] as String?,
        jobs2: getDataList(data['Jobs2']),
      );

  static UserModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UserModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'createdTime': _createdTime,
        'id_user': _idUser,
        'name': _name,
        'address': _address,
        'phone': _phone,
        'resume': _resume?.map((e) => e.toMap()).toList(),
        'skills': _skills,
        'skill_title': _skillTitle,
        'profile_pic': _profilePic,
        'notice_period': _noticePeriod,
        'profile_summery': _profileSummery,
        'applications': _applications,
        'uid': _uid,
        'current_company': _currentCompany,
        'current_position': _currentPosition,
        'total_experience': _totalExperience,
        'notification_email': _notificationEmail,
        'push_notification': _pushNotification,
        'favorite_jobs': _favoriteJobs,
        'userType': _userType,
        'social_media': _socialMedia,
        'social_media_link': _socialMediaLink,
        'social_name': _socialName,
        'email': _email,
        'Jobs2': _jobs2,
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
        'id_user': serializeParam(
          _idUser,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'resume': serializeParam(
          _resume,
          ParamType.DataStruct,
          isList: true,
        ),
        'skills': serializeParam(
          _skills,
          ParamType.String,
          isList: true,
        ),
        'skill_title': serializeParam(
          _skillTitle,
          ParamType.String,
          isList: true,
        ),
        'profile_pic': serializeParam(
          _profilePic,
          ParamType.String,
        ),
        'notice_period': serializeParam(
          _noticePeriod,
          ParamType.int,
        ),
        'profile_summery': serializeParam(
          _profileSummery,
          ParamType.String,
        ),
        'applications': serializeParam(
          _applications,
          ParamType.String,
          isList: true,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'current_company': serializeParam(
          _currentCompany,
          ParamType.String,
        ),
        'current_position': serializeParam(
          _currentPosition,
          ParamType.String,
        ),
        'total_experience': serializeParam(
          _totalExperience,
          ParamType.int,
        ),
        'notification_email': serializeParam(
          _notificationEmail,
          ParamType.bool,
        ),
        'push_notification': serializeParam(
          _pushNotification,
          ParamType.bool,
        ),
        'favorite_jobs': serializeParam(
          _favoriteJobs,
          ParamType.String,
          isList: true,
        ),
        'userType': serializeParam(
          _userType,
          ParamType.String,
        ),
        'social_media': serializeParam(
          _socialMedia,
          ParamType.String,
          isList: true,
        ),
        'social_media_link': serializeParam(
          _socialMediaLink,
          ParamType.String,
          isList: true,
        ),
        'social_name': serializeParam(
          _socialName,
          ParamType.String,
          isList: true,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'Jobs2': serializeParam(
          _jobs2,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static UserModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserModelStruct(
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
        idUser: deserializeParam(
          data['id_user'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        resume: deserializeStructParam<UserResumeStruct>(
          data['resume'],
          ParamType.DataStruct,
          true,
          structBuilder: UserResumeStruct.fromSerializableMap,
        ),
        skills: deserializeParam<String>(
          data['skills'],
          ParamType.String,
          true,
        ),
        skillTitle: deserializeParam<String>(
          data['skill_title'],
          ParamType.String,
          true,
        ),
        profilePic: deserializeParam(
          data['profile_pic'],
          ParamType.String,
          false,
        ),
        noticePeriod: deserializeParam(
          data['notice_period'],
          ParamType.int,
          false,
        ),
        profileSummery: deserializeParam(
          data['profile_summery'],
          ParamType.String,
          false,
        ),
        applications: deserializeParam<String>(
          data['applications'],
          ParamType.String,
          true,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        currentCompany: deserializeParam(
          data['current_company'],
          ParamType.String,
          false,
        ),
        currentPosition: deserializeParam(
          data['current_position'],
          ParamType.String,
          false,
        ),
        totalExperience: deserializeParam(
          data['total_experience'],
          ParamType.int,
          false,
        ),
        notificationEmail: deserializeParam(
          data['notification_email'],
          ParamType.bool,
          false,
        ),
        pushNotification: deserializeParam(
          data['push_notification'],
          ParamType.bool,
          false,
        ),
        favoriteJobs: deserializeParam<String>(
          data['favorite_jobs'],
          ParamType.String,
          true,
        ),
        userType: deserializeParam(
          data['userType'],
          ParamType.String,
          false,
        ),
        socialMedia: deserializeParam<String>(
          data['social_media'],
          ParamType.String,
          true,
        ),
        socialMediaLink: deserializeParam<String>(
          data['social_media_link'],
          ParamType.String,
          true,
        ),
        socialName: deserializeParam<String>(
          data['social_name'],
          ParamType.String,
          true,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        jobs2: deserializeParam<String>(
          data['Jobs2'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'UserModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserModelStruct &&
        id == other.id &&
        createdTime == other.createdTime &&
        idUser == other.idUser &&
        name == other.name &&
        address == other.address &&
        phone == other.phone &&
        listEquality.equals(resume, other.resume) &&
        listEquality.equals(skills, other.skills) &&
        listEquality.equals(skillTitle, other.skillTitle) &&
        profilePic == other.profilePic &&
        noticePeriod == other.noticePeriod &&
        profileSummery == other.profileSummery &&
        listEquality.equals(applications, other.applications) &&
        uid == other.uid &&
        currentCompany == other.currentCompany &&
        currentPosition == other.currentPosition &&
        totalExperience == other.totalExperience &&
        notificationEmail == other.notificationEmail &&
        pushNotification == other.pushNotification &&
        listEquality.equals(favoriteJobs, other.favoriteJobs) &&
        userType == other.userType &&
        listEquality.equals(socialMedia, other.socialMedia) &&
        listEquality.equals(socialMediaLink, other.socialMediaLink) &&
        listEquality.equals(socialName, other.socialName) &&
        email == other.email &&
        listEquality.equals(jobs2, other.jobs2);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdTime,
        idUser,
        name,
        address,
        phone,
        resume,
        skills,
        skillTitle,
        profilePic,
        noticePeriod,
        profileSummery,
        applications,
        uid,
        currentCompany,
        currentPosition,
        totalExperience,
        notificationEmail,
        pushNotification,
        favoriteJobs,
        userType,
        socialMedia,
        socialMediaLink,
        socialName,
        email,
        jobs2
      ]);
}

UserModelStruct createUserModelStruct({
  String? id,
  String? createdTime,
  String? idUser,
  String? name,
  String? address,
  String? phone,
  String? profilePic,
  int? noticePeriod,
  String? profileSummery,
  String? uid,
  String? currentCompany,
  String? currentPosition,
  int? totalExperience,
  bool? notificationEmail,
  bool? pushNotification,
  String? userType,
  String? email,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserModelStruct(
      id: id,
      createdTime: createdTime,
      idUser: idUser,
      name: name,
      address: address,
      phone: phone,
      profilePic: profilePic,
      noticePeriod: noticePeriod,
      profileSummery: profileSummery,
      uid: uid,
      currentCompany: currentCompany,
      currentPosition: currentPosition,
      totalExperience: totalExperience,
      notificationEmail: notificationEmail,
      pushNotification: pushNotification,
      userType: userType,
      email: email,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserModelStruct? updateUserModelStruct(
  UserModelStruct? userModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserModelStructData(
  Map<String, dynamic> firestoreData,
  UserModelStruct? userModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userModel == null) {
    return;
  }
  if (userModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userModelData = getUserModelFirestoreData(userModel, forFieldValue);
  final nestedData = userModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserModelFirestoreData(
  UserModelStruct? userModel, [
  bool forFieldValue = false,
]) {
  if (userModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userModel.toMap());

  // Add any Firestore field values
  userModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserModelListFirestoreData(
  List<UserModelStruct>? userModels,
) =>
    userModels?.map((e) => getUserModelFirestoreData(e, true)).toList() ?? [];
