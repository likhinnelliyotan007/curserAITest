// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// feilds in job
class JobInfoStruct extends FFFirebaseStruct {
  JobInfoStruct({
    String? title,
    String? description,
    String? createdAt,
    bool? status,
    String? type,
    List<String>? skills,
    List<String>? requiredAttachments,
    String? ctc,
    List<String>? company,
    List<String>? companyDescription,
    List<String>? companyName,
    String? idJob,
    List<String>? applications,
    int? minExperience,
    List<String>? jobLocation,
    List<String>? jobLocationTitle,
    int? maxExperience,
    List<String>? usersApplied,
    List<String>? skillTitle,
    List<CompanyLogoStruct>? companyLogo,
    List<String>? qualification,
    List<String>? educationalQualification,
    List<String>? users,
    bool? isRecommended,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _description = description,
        _createdAt = createdAt,
        _status = status,
        _type = type,
        _skills = skills,
        _requiredAttachments = requiredAttachments,
        _ctc = ctc,
        _company = company,
        _companyDescription = companyDescription,
        _companyName = companyName,
        _idJob = idJob,
        _applications = applications,
        _minExperience = minExperience,
        _jobLocation = jobLocation,
        _jobLocationTitle = jobLocationTitle,
        _maxExperience = maxExperience,
        _usersApplied = usersApplied,
        _skillTitle = skillTitle,
        _companyLogo = companyLogo,
        _qualification = qualification,
        _educationalQualification = educationalQualification,
        _users = users,
        _isRecommended = isRecommended,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "skills" field.
  List<String>? _skills;
  List<String> get skills => _skills ?? const [];
  set skills(List<String>? val) => _skills = val;

  void updateSkills(Function(List<String>) updateFn) {
    updateFn(_skills ??= []);
  }

  bool hasSkills() => _skills != null;

  // "required_attachments" field.
  List<String>? _requiredAttachments;
  List<String> get requiredAttachments => _requiredAttachments ?? const [];
  set requiredAttachments(List<String>? val) => _requiredAttachments = val;

  void updateRequiredAttachments(Function(List<String>) updateFn) {
    updateFn(_requiredAttachments ??= []);
  }

  bool hasRequiredAttachments() => _requiredAttachments != null;

  // "ctc" field.
  String? _ctc;
  String get ctc => _ctc ?? '';
  set ctc(String? val) => _ctc = val;

  bool hasCtc() => _ctc != null;

  // "company" field.
  List<String>? _company;
  List<String> get company => _company ?? const [];
  set company(List<String>? val) => _company = val;

  void updateCompany(Function(List<String>) updateFn) {
    updateFn(_company ??= []);
  }

  bool hasCompany() => _company != null;

  // "company_description" field.
  List<String>? _companyDescription;
  List<String> get companyDescription => _companyDescription ?? const [];
  set companyDescription(List<String>? val) => _companyDescription = val;

  void updateCompanyDescription(Function(List<String>) updateFn) {
    updateFn(_companyDescription ??= []);
  }

  bool hasCompanyDescription() => _companyDescription != null;

  // "company_name" field.
  List<String>? _companyName;
  List<String> get companyName => _companyName ?? const [];
  set companyName(List<String>? val) => _companyName = val;

  void updateCompanyName(Function(List<String>) updateFn) {
    updateFn(_companyName ??= []);
  }

  bool hasCompanyName() => _companyName != null;

  // "id_job" field.
  String? _idJob;
  String get idJob => _idJob ?? '';
  set idJob(String? val) => _idJob = val;

  bool hasIdJob() => _idJob != null;

  // "applications" field.
  List<String>? _applications;
  List<String> get applications => _applications ?? const [];
  set applications(List<String>? val) => _applications = val;

  void updateApplications(Function(List<String>) updateFn) {
    updateFn(_applications ??= []);
  }

  bool hasApplications() => _applications != null;

  // "min_experience" field.
  int? _minExperience;
  int get minExperience => _minExperience ?? 0;
  set minExperience(int? val) => _minExperience = val;

  void incrementMinExperience(int amount) =>
      minExperience = minExperience + amount;

  bool hasMinExperience() => _minExperience != null;

  // "job_location" field.
  List<String>? _jobLocation;
  List<String> get jobLocation => _jobLocation ?? const [];
  set jobLocation(List<String>? val) => _jobLocation = val;

  void updateJobLocation(Function(List<String>) updateFn) {
    updateFn(_jobLocation ??= []);
  }

  bool hasJobLocation() => _jobLocation != null;

  // "job_location_title" field.
  List<String>? _jobLocationTitle;
  List<String> get jobLocationTitle => _jobLocationTitle ?? const [];
  set jobLocationTitle(List<String>? val) => _jobLocationTitle = val;

  void updateJobLocationTitle(Function(List<String>) updateFn) {
    updateFn(_jobLocationTitle ??= []);
  }

  bool hasJobLocationTitle() => _jobLocationTitle != null;

  // "max_experience" field.
  int? _maxExperience;
  int get maxExperience => _maxExperience ?? 0;
  set maxExperience(int? val) => _maxExperience = val;

  void incrementMaxExperience(int amount) =>
      maxExperience = maxExperience + amount;

  bool hasMaxExperience() => _maxExperience != null;

  // "users_applied" field.
  List<String>? _usersApplied;
  List<String> get usersApplied => _usersApplied ?? const [];
  set usersApplied(List<String>? val) => _usersApplied = val;

  void updateUsersApplied(Function(List<String>) updateFn) {
    updateFn(_usersApplied ??= []);
  }

  bool hasUsersApplied() => _usersApplied != null;

  // "skill_title" field.
  List<String>? _skillTitle;
  List<String> get skillTitle => _skillTitle ?? const [];
  set skillTitle(List<String>? val) => _skillTitle = val;

  void updateSkillTitle(Function(List<String>) updateFn) {
    updateFn(_skillTitle ??= []);
  }

  bool hasSkillTitle() => _skillTitle != null;

  // "company_logo" field.
  List<CompanyLogoStruct>? _companyLogo;
  List<CompanyLogoStruct> get companyLogo => _companyLogo ?? const [];
  set companyLogo(List<CompanyLogoStruct>? val) => _companyLogo = val;

  void updateCompanyLogo(Function(List<CompanyLogoStruct>) updateFn) {
    updateFn(_companyLogo ??= []);
  }

  bool hasCompanyLogo() => _companyLogo != null;

  // "qualification" field.
  List<String>? _qualification;
  List<String> get qualification => _qualification ?? const [];
  set qualification(List<String>? val) => _qualification = val;

  void updateQualification(Function(List<String>) updateFn) {
    updateFn(_qualification ??= []);
  }

  bool hasQualification() => _qualification != null;

  // "educational_qualification" field.
  List<String>? _educationalQualification;
  List<String> get educationalQualification =>
      _educationalQualification ?? const [];
  set educationalQualification(List<String>? val) =>
      _educationalQualification = val;

  void updateEducationalQualification(Function(List<String>) updateFn) {
    updateFn(_educationalQualification ??= []);
  }

  bool hasEducationalQualification() => _educationalQualification != null;

  // "users" field.
  List<String>? _users;
  List<String> get users => _users ?? const [];
  set users(List<String>? val) => _users = val;

  void updateUsers(Function(List<String>) updateFn) {
    updateFn(_users ??= []);
  }

  bool hasUsers() => _users != null;

  // "isRecommended" field.
  bool? _isRecommended;
  bool get isRecommended => _isRecommended ?? false;
  set isRecommended(bool? val) => _isRecommended = val;

  bool hasIsRecommended() => _isRecommended != null;

  static JobInfoStruct fromMap(Map<String, dynamic> data) => JobInfoStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        createdAt: data['created_at'] as String?,
        status: data['status'] as bool?,
        type: data['type'] as String?,
        skills: getDataList(data['skills']),
        requiredAttachments: getDataList(data['required_attachments']),
        ctc: data['ctc'] as String?,
        company: getDataList(data['company']),
        companyDescription: getDataList(data['company_description']),
        companyName: getDataList(data['company_name']),
        idJob: data['id_job'] as String?,
        applications: getDataList(data['applications']),
        minExperience: castToType<int>(data['min_experience']),
        jobLocation: getDataList(data['job_location']),
        jobLocationTitle: getDataList(data['job_location_title']),
        maxExperience: castToType<int>(data['max_experience']),
        usersApplied: getDataList(data['users_applied']),
        skillTitle: getDataList(data['skill_title']),
        companyLogo: getStructList(
          data['company_logo'],
          CompanyLogoStruct.fromMap,
        ),
        qualification: getDataList(data['qualification']),
        educationalQualification:
            getDataList(data['educational_qualification']),
        users: getDataList(data['users']),
        isRecommended: data['isRecommended'] as bool?,
      );

  static JobInfoStruct? maybeFromMap(dynamic data) =>
      data is Map ? JobInfoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'created_at': _createdAt,
        'status': _status,
        'type': _type,
        'skills': _skills,
        'required_attachments': _requiredAttachments,
        'ctc': _ctc,
        'company': _company,
        'company_description': _companyDescription,
        'company_name': _companyName,
        'id_job': _idJob,
        'applications': _applications,
        'min_experience': _minExperience,
        'job_location': _jobLocation,
        'job_location_title': _jobLocationTitle,
        'max_experience': _maxExperience,
        'users_applied': _usersApplied,
        'skill_title': _skillTitle,
        'company_logo': _companyLogo?.map((e) => e.toMap()).toList(),
        'qualification': _qualification,
        'educational_qualification': _educationalQualification,
        'users': _users,
        'isRecommended': _isRecommended,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'skills': serializeParam(
          _skills,
          ParamType.String,
          isList: true,
        ),
        'required_attachments': serializeParam(
          _requiredAttachments,
          ParamType.String,
          isList: true,
        ),
        'ctc': serializeParam(
          _ctc,
          ParamType.String,
        ),
        'company': serializeParam(
          _company,
          ParamType.String,
          isList: true,
        ),
        'company_description': serializeParam(
          _companyDescription,
          ParamType.String,
          isList: true,
        ),
        'company_name': serializeParam(
          _companyName,
          ParamType.String,
          isList: true,
        ),
        'id_job': serializeParam(
          _idJob,
          ParamType.String,
        ),
        'applications': serializeParam(
          _applications,
          ParamType.String,
          isList: true,
        ),
        'min_experience': serializeParam(
          _minExperience,
          ParamType.int,
        ),
        'job_location': serializeParam(
          _jobLocation,
          ParamType.String,
          isList: true,
        ),
        'job_location_title': serializeParam(
          _jobLocationTitle,
          ParamType.String,
          isList: true,
        ),
        'max_experience': serializeParam(
          _maxExperience,
          ParamType.int,
        ),
        'users_applied': serializeParam(
          _usersApplied,
          ParamType.String,
          isList: true,
        ),
        'skill_title': serializeParam(
          _skillTitle,
          ParamType.String,
          isList: true,
        ),
        'company_logo': serializeParam(
          _companyLogo,
          ParamType.DataStruct,
          isList: true,
        ),
        'qualification': serializeParam(
          _qualification,
          ParamType.String,
          isList: true,
        ),
        'educational_qualification': serializeParam(
          _educationalQualification,
          ParamType.String,
          isList: true,
        ),
        'users': serializeParam(
          _users,
          ParamType.String,
          isList: true,
        ),
        'isRecommended': serializeParam(
          _isRecommended,
          ParamType.bool,
        ),
      }.withoutNulls;

  static JobInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      JobInfoStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        skills: deserializeParam<String>(
          data['skills'],
          ParamType.String,
          true,
        ),
        requiredAttachments: deserializeParam<String>(
          data['required_attachments'],
          ParamType.String,
          true,
        ),
        ctc: deserializeParam(
          data['ctc'],
          ParamType.String,
          false,
        ),
        company: deserializeParam<String>(
          data['company'],
          ParamType.String,
          true,
        ),
        companyDescription: deserializeParam<String>(
          data['company_description'],
          ParamType.String,
          true,
        ),
        companyName: deserializeParam<String>(
          data['company_name'],
          ParamType.String,
          true,
        ),
        idJob: deserializeParam(
          data['id_job'],
          ParamType.String,
          false,
        ),
        applications: deserializeParam<String>(
          data['applications'],
          ParamType.String,
          true,
        ),
        minExperience: deserializeParam(
          data['min_experience'],
          ParamType.int,
          false,
        ),
        jobLocation: deserializeParam<String>(
          data['job_location'],
          ParamType.String,
          true,
        ),
        jobLocationTitle: deserializeParam<String>(
          data['job_location_title'],
          ParamType.String,
          true,
        ),
        maxExperience: deserializeParam(
          data['max_experience'],
          ParamType.int,
          false,
        ),
        usersApplied: deserializeParam<String>(
          data['users_applied'],
          ParamType.String,
          true,
        ),
        skillTitle: deserializeParam<String>(
          data['skill_title'],
          ParamType.String,
          true,
        ),
        companyLogo: deserializeStructParam<CompanyLogoStruct>(
          data['company_logo'],
          ParamType.DataStruct,
          true,
          structBuilder: CompanyLogoStruct.fromSerializableMap,
        ),
        qualification: deserializeParam<String>(
          data['qualification'],
          ParamType.String,
          true,
        ),
        educationalQualification: deserializeParam<String>(
          data['educational_qualification'],
          ParamType.String,
          true,
        ),
        users: deserializeParam<String>(
          data['users'],
          ParamType.String,
          true,
        ),
        isRecommended: deserializeParam(
          data['isRecommended'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'JobInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is JobInfoStruct &&
        title == other.title &&
        description == other.description &&
        createdAt == other.createdAt &&
        status == other.status &&
        type == other.type &&
        listEquality.equals(skills, other.skills) &&
        listEquality.equals(requiredAttachments, other.requiredAttachments) &&
        ctc == other.ctc &&
        listEquality.equals(company, other.company) &&
        listEquality.equals(companyDescription, other.companyDescription) &&
        listEquality.equals(companyName, other.companyName) &&
        idJob == other.idJob &&
        listEquality.equals(applications, other.applications) &&
        minExperience == other.minExperience &&
        listEquality.equals(jobLocation, other.jobLocation) &&
        listEquality.equals(jobLocationTitle, other.jobLocationTitle) &&
        maxExperience == other.maxExperience &&
        listEquality.equals(usersApplied, other.usersApplied) &&
        listEquality.equals(skillTitle, other.skillTitle) &&
        listEquality.equals(companyLogo, other.companyLogo) &&
        listEquality.equals(qualification, other.qualification) &&
        listEquality.equals(
            educationalQualification, other.educationalQualification) &&
        listEquality.equals(users, other.users) &&
        isRecommended == other.isRecommended;
  }

  @override
  int get hashCode => const ListEquality().hash([
        title,
        description,
        createdAt,
        status,
        type,
        skills,
        requiredAttachments,
        ctc,
        company,
        companyDescription,
        companyName,
        idJob,
        applications,
        minExperience,
        jobLocation,
        jobLocationTitle,
        maxExperience,
        usersApplied,
        skillTitle,
        companyLogo,
        qualification,
        educationalQualification,
        users,
        isRecommended
      ]);
}

JobInfoStruct createJobInfoStruct({
  String? title,
  String? description,
  String? createdAt,
  bool? status,
  String? type,
  String? ctc,
  String? idJob,
  int? minExperience,
  int? maxExperience,
  bool? isRecommended,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    JobInfoStruct(
      title: title,
      description: description,
      createdAt: createdAt,
      status: status,
      type: type,
      ctc: ctc,
      idJob: idJob,
      minExperience: minExperience,
      maxExperience: maxExperience,
      isRecommended: isRecommended,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

JobInfoStruct? updateJobInfoStruct(
  JobInfoStruct? jobInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    jobInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addJobInfoStructData(
  Map<String, dynamic> firestoreData,
  JobInfoStruct? jobInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (jobInfo == null) {
    return;
  }
  if (jobInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && jobInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final jobInfoData = getJobInfoFirestoreData(jobInfo, forFieldValue);
  final nestedData = jobInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = jobInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getJobInfoFirestoreData(
  JobInfoStruct? jobInfo, [
  bool forFieldValue = false,
]) {
  if (jobInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(jobInfo.toMap());

  // Add any Firestore field values
  jobInfo.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getJobInfoListFirestoreData(
  List<JobInfoStruct>? jobInfos,
) =>
    jobInfos?.map((e) => getJobInfoFirestoreData(e, true)).toList() ?? [];
