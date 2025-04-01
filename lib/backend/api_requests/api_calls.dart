import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start FlutterFlow + Airtable ApiFlow API Group Code

class FlutterFlowAirtableApiFlowAPIGroup {
  static String getBaseUrl() =>
      'https://gw.apiflow.online/api/4eaeb11201c24676958d4018c1cef118';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
  };
  static ListJobsCall listJobsCall = ListJobsCall();
  static CreateNewJobsCall createNewJobsCall = CreateNewJobsCall();
  static GetJobsByIDCall getJobsByIDCall = GetJobsByIDCall();
  static UpdateJobsCall updateJobsCall = UpdateJobsCall();
  static DeleteJobsCall deleteJobsCall = DeleteJobsCall();
  static ListSkillsCall listSkillsCall = ListSkillsCall();
  static CreateNewSkillsCall createNewSkillsCall = CreateNewSkillsCall();
  static GetSkillsByIDCall getSkillsByIDCall = GetSkillsByIDCall();
  static UpdateSkillsCall updateSkillsCall = UpdateSkillsCall();
  static DeleteSkillsCall deleteSkillsCall = DeleteSkillsCall();
  static ListCompaniesCall listCompaniesCall = ListCompaniesCall();
  static CreateNewCompaniesCall createNewCompaniesCall =
      CreateNewCompaniesCall();
  static GetCompaniesByIDCall getCompaniesByIDCall = GetCompaniesByIDCall();
  static UpdateCompaniesCall updateCompaniesCall = UpdateCompaniesCall();
  static DeleteCompaniesCall deleteCompaniesCall = DeleteCompaniesCall();
  static ListApplicationsCall listApplicationsCall = ListApplicationsCall();
  static CreateNewApplicationsCall createNewApplicationsCall =
      CreateNewApplicationsCall();
  static GetApplicationsByIDCall getApplicationsByIDCall =
      GetApplicationsByIDCall();
  static UpdateApplicationsCall updateApplicationsCall =
      UpdateApplicationsCall();
  static DeleteApplicationsCall deleteApplicationsCall =
      DeleteApplicationsCall();
  static ListUsersCall listUsersCall = ListUsersCall();
  static CreateNewUsersCall createNewUsersCall = CreateNewUsersCall();
  static GetUsersByIDCall getUsersByIDCall = GetUsersByIDCall();
  static UpdateUsersCall updateUsersCall = UpdateUsersCall();
  static DeleteUsersCall deleteUsersCall = DeleteUsersCall();
  static ListUserLinkedJobsCall listUserLinkedJobsCall =
      ListUserLinkedJobsCall();
  static CreateNewUserLinkedJobsCall createNewUserLinkedJobsCall =
      CreateNewUserLinkedJobsCall();
  static GetUserLinkedJobsByIDCall getUserLinkedJobsByIDCall =
      GetUserLinkedJobsByIDCall();
  static UpdateUserLinkedJobsCall updateUserLinkedJobsCall =
      UpdateUserLinkedJobsCall();
  static DeleteUserLinkedJobsCall deleteUserLinkedJobsCall =
      DeleteUserLinkedJobsCall();
  static ListJobLocationCall listJobLocationCall = ListJobLocationCall();
  static CreateNewJobLocationCall createNewJobLocationCall =
      CreateNewJobLocationCall();
  static GetJobLocationByIDCall getJobLocationByIDCall =
      GetJobLocationByIDCall();
  static UpdateJobLocationCall updateJobLocationCall = UpdateJobLocationCall();
  static DeleteJobLocationCall deleteJobLocationCall = DeleteJobLocationCall();
  static ListQualificationCall listQualificationCall = ListQualificationCall();
  static CreateNewQualificationCall createNewQualificationCall =
      CreateNewQualificationCall();
  static GetQualificationByIDCall getQualificationByIDCall =
      GetQualificationByIDCall();
  static UpdateQualificationCall updateQualificationCall =
      UpdateQualificationCall();
  static DeleteQualificationCall deleteQualificationCall =
      DeleteQualificationCall();
  static ListSocialMediaCall listSocialMediaCall = ListSocialMediaCall();
  static CreateNewSocialMediaCall createNewSocialMediaCall =
      CreateNewSocialMediaCall();
  static GetSocialMediaByIDCall getSocialMediaByIDCall =
      GetSocialMediaByIDCall();
  static UpdateSocialMediaCall updateSocialMediaCall = UpdateSocialMediaCall();
  static DeleteSocialMediaCall deleteSocialMediaCall = DeleteSocialMediaCall();
}

class ListJobsCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? sortField = '',
    String? sortDirection = '',
    String? offset = '',
    int? page,
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Jobs',
      apiUrl: '${baseUrl}/table/tblgsPLhYGNaNHE8J',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {
        'filter': filter,
        'sort_field': sortField,
        'sort_direction': sortDirection,
        'offset': offset,
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewJobsCall {
  Future<ApiCallResponse> call({
    String? title = '',
    String? description = '',
    String? type = 'Full-time',
    List<String>? skillsList,
    String? ctc = '',
    List<String>? companyList,
    List<String>? companyDescriptionList,
    int? minExperience,
    int? maxExperience,
    List<String>? jobLocationList,
    String? qualification = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();
    final skills = _serializeList(skillsList);
    final company = _serializeList(companyList);
    final companyDescription = _serializeList(companyDescriptionList);
    final jobLocation = _serializeList(jobLocationList);

    final ffApiRequestBody = '''
{ 
  "title": "Senior Android Developer",
  "description": "We are looking for a Senior Android Developer to design and develop Android solutions. The ideal candidate will have expertise in Android (Java/Kotlin...",
  "created_at": "2025-03-23T05:24:21.000Z",
  "status": true,
  "type": "Full-time",
  "skills": "[\\"rec677MnHOX9NTNI1\\",\\"recy59tQCMvFM8jMZ\\",\\"recUEJtAcEHKAMu0a\\"]",
  "skill_title": "[\\"Flutter\\",\\"Dart\\",\\"UI designing\\"]",
  "required_attachments": "[\\"Resume/CV\\"]",
  "ctc": "\$1650,00 - \$200,000",
  "company": "[\\"recrguiPV8c4CPsEM\\"]",
  "company_name": "[\\"EY\\"]",
  "company_description": "[\\"EY is building a better working world by creating new value for clients, people, society, the planet, while building trust in the capital markets.\\\\n\\\\nEnabled by data, AI and advanced technology, EY teams help clients shape the future with confidence and develop answers for the most pressing issues of today and tomorrow.\\\\n\\\\nEY teams in more than 150 countries work across a full spectrum of services in assurance, consulting, tax, strategy and transactions, strengthened by sector experience and diverse ecosystem partners.\\\\n \\\\nFind out more about the EY global network: http://ey.com/en_gl/legal-statement\\"]",
  "applications": "string",
  "min_experience": 2,
  "max_experience": 6,
  "job_location": "[\\"recPaH4vw6ey4aVUW\\"]",
  "job_location_title": "[\\"Alappuzha\\"]",
  "users_applied": "string",
  "company_logo": "[{\\"id\\":\\"attD6OgIc6Kt749Mw\\",\\"width\\":225,\\"height\\":225,\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/ElWp9lepnNGy5EPSZUaQew/xsoczy6gjnpOYxaW-H0_JaYKYd6_X22RnuoAjqFmSOnTGvioPWK7KE11rOhMi_4uveeu3u47rjo7Vxrd8kBILTxKbtH8RES--C3KgNnlyJHLhkCzRqOmCda6PhUNIlH8iRtwDkzcrf9ImNbuMG0RmYa4yvp4WCNVQQIuAN24vkE/FZn79HMtp41JtNdPIZ-zvcfe4Nm6b2vm-uBq_TgefwM\\",\\"filename\\":\\"images.png\\",\\"size\\":2204,\\"type\\":\\"image/png\\",\\"thumbnails\\":{\\"small\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/Sj_3B-E7AkQFI04AXOzobA/ZaRwJr0l05eW3GKPQtMUUrtdQMZtA7e0jxLX_PoVtFPEQM36cWlfRyrZHm1_1wgOmGL3EnSNVZSlKBrgfUURMUvy3qXcRXq3wREVw3dt6l5oFcZrtFec8BArnWfWUNI0D_Ud-JKQLyRhDz3g3gNeAQ/cC5Dx0K2aWAYvzP8v1D2VLQspuN7Fc71YWiwI8TXNeI\\",\\"width\\":36,\\"height\\":36},\\"large\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/MoQURvCFvojBI6lviJP5Eg/uI4aBh3CNXgJMdJpoLzsAqnbU3e9ehUO2Amh5fGlCF4JIpRcUvg-TDOGTZxB_AdFQl5jL9rikYKJkq1DORSqaBr3KhIiBHPlJsqzzE2ibUKWiuQI3me5Z0KBwpuBxJs-jAvudQFhqGfhnE6TMmbnbw/v97DT40bNoZdBmuzOyAqPWL6TWT_xt2nxVKIRtyg4Nc\\",\\"width\\":225,\\"height\\":225},\\"full\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/aMPY_C51PGg5RvdvMh_MOQ/mMWEP56Q5FL4tWX84CU7Yg6X5zvrzhTxqUMFF5Q2ncbGefzETKkEhULljDSe4wsuadRjFr4xXijksFJUVVFWCd-2XDdQPdgarww6tXiL3P2-qVGb3BI_1qLS1yEIwTIR8U-o8XPl1nHZBWfwTG295Q/7GkVqTOey-uGhEKuZJdktq-PZUcEQedaiuBLJNtu6ss\\",\\"width\\":225,\\"height\\":225}}}]",
  "qualification": "[\\"recOzXF4Bne8OFR7R\\",\\"recPoy5IYNclWTajq\\"]",
  "educational_qualification": "[\\"+2 Kerala\\",\\"Diploma - Computer Engneering\\"]",
  "users": "string",
  "isRecommended": true,
  "createdBy": "[\\"recuMaEWWOJwP7DGS\\"]",
  "createdName": "[\\"Likhin Nelliyotan\\"]",
  "createdPosition": "[\\"HR Manager\\"]",
  "applications2": "string",
  "favourite_users": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new Jobs',
      apiUrl: '${baseUrl}/table/tblgsPLhYGNaNHE8J',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetJobsByIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Jobs by ID',
      apiUrl: '${baseUrl}/table/tblgsPLhYGNaNHE8J/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateJobsCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_job": "rec0cjnuCKctExX0j",
  "title": "Senior Android Developer",
  "description": "We are looking for a Senior Android Developer to design and develop Android solutions. The ideal candidate will have expertise in Android (Java/Kotlin...",
  "created_at": "2025-03-23T05:24:21.000Z",
  "status": true,
  "type": "Full-time",
  "skills": "[\\"rec677MnHOX9NTNI1\\",\\"recy59tQCMvFM8jMZ\\",\\"recUEJtAcEHKAMu0a\\"]",
  "skill_title": "[\\"Flutter\\",\\"Dart\\",\\"UI designing\\"]",
  "required_attachments": "[\\"Resume/CV\\"]",
  "ctc": "\$1650,00 - \$200,000",
  "company": "[\\"recrguiPV8c4CPsEM\\"]",
  "company_name": "[\\"EY\\"]",
  "company_description": "[\\"EY is building a better working world by creating new value for clients, people, society, the planet, while building trust in the capital markets.\\\\n\\\\nEnabled by data, AI and advanced technology, EY teams help clients shape the future with confidence and develop answers for the most pressing issues of today and tomorrow.\\\\n\\\\nEY teams in more than 150 countries work across a full spectrum of services in assurance, consulting, tax, strategy and transactions, strengthened by sector experience and diverse ecosystem partners.\\\\n \\\\nFind out more about the EY global network: http://ey.com/en_gl/legal-statement\\"]",
  "applications": "string",
  "min_experience": 2,
  "max_experience": 6,
  "job_location": "[\\"recPaH4vw6ey4aVUW\\"]",
  "job_location_title": "[\\"Alappuzha\\"]",
  "users_applied": "string",
  "company_logo": "[{\\"id\\":\\"attD6OgIc6Kt749Mw\\",\\"width\\":225,\\"height\\":225,\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/ElWp9lepnNGy5EPSZUaQew/xsoczy6gjnpOYxaW-H0_JaYKYd6_X22RnuoAjqFmSOnTGvioPWK7KE11rOhMi_4uveeu3u47rjo7Vxrd8kBILTxKbtH8RES--C3KgNnlyJHLhkCzRqOmCda6PhUNIlH8iRtwDkzcrf9ImNbuMG0RmYa4yvp4WCNVQQIuAN24vkE/FZn79HMtp41JtNdPIZ-zvcfe4Nm6b2vm-uBq_TgefwM\\",\\"filename\\":\\"images.png\\",\\"size\\":2204,\\"type\\":\\"image/png\\",\\"thumbnails\\":{\\"small\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/Sj_3B-E7AkQFI04AXOzobA/ZaRwJr0l05eW3GKPQtMUUrtdQMZtA7e0jxLX_PoVtFPEQM36cWlfRyrZHm1_1wgOmGL3EnSNVZSlKBrgfUURMUvy3qXcRXq3wREVw3dt6l5oFcZrtFec8BArnWfWUNI0D_Ud-JKQLyRhDz3g3gNeAQ/cC5Dx0K2aWAYvzP8v1D2VLQspuN7Fc71YWiwI8TXNeI\\",\\"width\\":36,\\"height\\":36},\\"large\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/MoQURvCFvojBI6lviJP5Eg/uI4aBh3CNXgJMdJpoLzsAqnbU3e9ehUO2Amh5fGlCF4JIpRcUvg-TDOGTZxB_AdFQl5jL9rikYKJkq1DORSqaBr3KhIiBHPlJsqzzE2ibUKWiuQI3me5Z0KBwpuBxJs-jAvudQFhqGfhnE6TMmbnbw/v97DT40bNoZdBmuzOyAqPWL6TWT_xt2nxVKIRtyg4Nc\\",\\"width\\":225,\\"height\\":225},\\"full\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/aMPY_C51PGg5RvdvMh_MOQ/mMWEP56Q5FL4tWX84CU7Yg6X5zvrzhTxqUMFF5Q2ncbGefzETKkEhULljDSe4wsuadRjFr4xXijksFJUVVFWCd-2XDdQPdgarww6tXiL3P2-qVGb3BI_1qLS1yEIwTIR8U-o8XPl1nHZBWfwTG295Q/7GkVqTOey-uGhEKuZJdktq-PZUcEQedaiuBLJNtu6ss\\",\\"width\\":225,\\"height\\":225}}}]",
  "qualification": "[\\"recOzXF4Bne8OFR7R\\",\\"recPoy5IYNclWTajq\\"]",
  "educational_qualification": "[\\"+2 Kerala\\",\\"Diploma - Computer Engneering\\"]",
  "users": "string",
  "isRecommended": true,
  "createdBy": "[\\"recuMaEWWOJwP7DGS\\"]",
  "createdName": "[\\"Likhin Nelliyotan\\"]",
  "createdPosition": "[\\"HR Manager\\"]",
  "applications2": "string",
  "favourite_users": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Jobs',
      apiUrl: '${baseUrl}/table/tblgsPLhYGNaNHE8J/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteJobsCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Jobs',
      apiUrl: '${baseUrl}/table/tblgsPLhYGNaNHE8J/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListSkillsCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? sortField = '',
    String? sortDirection = '',
    String? offset = '',
    int? page,
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Skills',
      apiUrl: '${baseUrl}/table/tblumMcFdXWyYXy6H',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {
        'filter': filter,
        'sort_field': sortField,
        'sort_direction': sortDirection,
        'offset': offset,
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewSkillsCall {
  Future<ApiCallResponse> call({
    String? skillName = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(skillName)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new Skills',
      apiUrl: '${baseUrl}/table/tblumMcFdXWyYXy6H',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSkillsByIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Skills by ID',
      apiUrl: '${baseUrl}/table/tblumMcFdXWyYXy6H/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateSkillsCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_skill": "rec0tQonuLdzCuJn9",
  "name": "Gradle",
  "Jobs": "string",
  "users": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Skills',
      apiUrl: '${baseUrl}/table/tblumMcFdXWyYXy6H/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteSkillsCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Skills',
      apiUrl: '${baseUrl}/table/tblumMcFdXWyYXy6H/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListCompaniesCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? sortField = '',
    String? sortDirection = '',
    String? offset = '',
    int? page,
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Companies',
      apiUrl: '${baseUrl}/table/tblolUdDCK2fXRMRu',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {
        'filter': filter,
        'sort_field': sortField,
        'sort_direction': sortDirection,
        'offset': offset,
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewCompaniesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_company": "rec21KEqZbPvBM0hE",
  "name": "IBM",
  "about_description": "Founded in 1911, IBM is a multinational technology and consulting company known for its computer hardware, software, and services. Historically significant in the development of mainframe computers, IBM now focuses on cloud computing, artificial intelligence (AI) with its Watson platform, and enterprise solutions.",
  "logo": "[{\\"id\\":\\"attZg55djZRwnsQMr\\",\\"width\\":4464,\\"height\\":1944,\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/gRFrt1PDmtLE6RPZQCKoFA/JbXjwMzJtpulGmrSz5MgpPCkoMGDmLWUhN4bwUpto_JaoEpRSIeNW2pQ0mNR9gnwhRns7pH7IEjD2zFKzytB4seMQpAwGOH8zdOIhAvbA_qeOsfVFvUSrw-Mzb_fyEkjVAjkhbXm_UkiCoWLAzkWAQ/x5CxC-ZoVRrb3q_POYJM7Z52yVJkijglKmyskDhU54o\\",\\"filename\\":\\"ibm.png\\",\\"size\\":51090,\\"type\\":\\"image/png\\",\\"thumbnails\\":{\\"small\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/ZkqVsUFCuRf3swolubLmcw/Bosy6dNAj-bxYy8dMgiiIH9_DnpuAAopvCjS7Jb1KdPenpw42pT5TQb7P4rGnGdAAkqoXk4Uko_d1Hp8myuBHa3flwFTv5zi4XT26NjuwcS8Rp8qWgm9VRaE9j_uYqF9WKtUk5DuNP0SpfS52grzJg/fY8clsWti6Kh3HDv8oWQ89MIJf-xvJYNLZY3u6n7-rw\\",\\"width\\":83,\\"height\\":36},\\"large\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/oTZdYd3eflsCyRc69K-Amg/iTaUjaEY3LoRIbeWRHNuVIsUcl8iy7Npuh035OusUtowAP7Dsruf-d6CesEMRAnz1Y0xwue28X9uryN8GiOkK-8YBo8fAOihITH8x093jBU1UzQ2zUK3rQPty0aylr43PRH31GU1Bm_wAF68pxBjTw/2dGDAZxm_oPdiUiFltWZ4M8SXHF8xK6bD6RwnkEx_Ro\\",\\"width\\":1176,\\"height\\":512},\\"full\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/krhnCZUCzG_6cw380p0jew/XSWz7NYyPgUf-V1voqhkawvHmX-sxWVcymuYWs-FCFADmJVdS1wZ_2bQgXlwV1YAqLi_vdMg5IHq3HkVk1qq5SfI8qec6USrL1882zdVrV2icwlMz3Q7NJL1FbbJ2j6CCCAZ3Q-qRTIivZ3Wh5HCeA/BfdQ_CpjBILy-wL0KfuRsqSzvQ0FnEVzfYUyU5XfFoI\\",\\"width\\":3000,\\"height\\":1306}}}]",
  "Jobs": "string",
  "users": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new Companies',
      apiUrl: '${baseUrl}/table/tblolUdDCK2fXRMRu',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCompaniesByIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Companies by ID',
      apiUrl: '${baseUrl}/table/tblolUdDCK2fXRMRu/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateCompaniesCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_company": "rec21KEqZbPvBM0hE",
  "name": "IBM",
  "about_description": "Founded in 1911, IBM is a multinational technology and consulting company known for its computer hardware, software, and services. Historically significant in the development of mainframe computers, IBM now focuses on cloud computing, artificial intelligence (AI) with its Watson platform, and enterprise solutions.",
  "logo": "[{\\"id\\":\\"attZg55djZRwnsQMr\\",\\"width\\":4464,\\"height\\":1944,\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/gRFrt1PDmtLE6RPZQCKoFA/JbXjwMzJtpulGmrSz5MgpPCkoMGDmLWUhN4bwUpto_JaoEpRSIeNW2pQ0mNR9gnwhRns7pH7IEjD2zFKzytB4seMQpAwGOH8zdOIhAvbA_qeOsfVFvUSrw-Mzb_fyEkjVAjkhbXm_UkiCoWLAzkWAQ/x5CxC-ZoVRrb3q_POYJM7Z52yVJkijglKmyskDhU54o\\",\\"filename\\":\\"ibm.png\\",\\"size\\":51090,\\"type\\":\\"image/png\\",\\"thumbnails\\":{\\"small\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/ZkqVsUFCuRf3swolubLmcw/Bosy6dNAj-bxYy8dMgiiIH9_DnpuAAopvCjS7Jb1KdPenpw42pT5TQb7P4rGnGdAAkqoXk4Uko_d1Hp8myuBHa3flwFTv5zi4XT26NjuwcS8Rp8qWgm9VRaE9j_uYqF9WKtUk5DuNP0SpfS52grzJg/fY8clsWti6Kh3HDv8oWQ89MIJf-xvJYNLZY3u6n7-rw\\",\\"width\\":83,\\"height\\":36},\\"large\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/oTZdYd3eflsCyRc69K-Amg/iTaUjaEY3LoRIbeWRHNuVIsUcl8iy7Npuh035OusUtowAP7Dsruf-d6CesEMRAnz1Y0xwue28X9uryN8GiOkK-8YBo8fAOihITH8x093jBU1UzQ2zUK3rQPty0aylr43PRH31GU1Bm_wAF68pxBjTw/2dGDAZxm_oPdiUiFltWZ4M8SXHF8xK6bD6RwnkEx_Ro\\",\\"width\\":1176,\\"height\\":512},\\"full\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/krhnCZUCzG_6cw380p0jew/XSWz7NYyPgUf-V1voqhkawvHmX-sxWVcymuYWs-FCFADmJVdS1wZ_2bQgXlwV1YAqLi_vdMg5IHq3HkVk1qq5SfI8qec6USrL1882zdVrV2icwlMz3Q7NJL1FbbJ2j6CCCAZ3Q-qRTIivZ3Wh5HCeA/BfdQ_CpjBILy-wL0KfuRsqSzvQ0FnEVzfYUyU5XfFoI\\",\\"width\\":3000,\\"height\\":1306}}}]",
  "Jobs": "string",
  "users": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Companies',
      apiUrl: '${baseUrl}/table/tblolUdDCK2fXRMRu/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCompaniesCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Companies',
      apiUrl: '${baseUrl}/table/tblolUdDCK2fXRMRu/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListApplicationsCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? sortField = '',
    String? sortDirection = '',
    String? offset = '',
    int? page,
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Applications',
      apiUrl: '${baseUrl}/table/tbl6OYYz542YS7fgs',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {
        'filter': filter,
        'sort_field': sortField,
        'sort_direction': sortDirection,
        'offset': offset,
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewApplicationsCall {
  Future<ApiCallResponse> call({
    List<String>? applicantList,
    List<String>? jobIdList,
    String? status = 'Applied',
    String? coverletter = 'Cover letter not attached',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();
    final applicant = _serializeList(applicantList);
    final jobId = _serializeList(jobIdList);

    final ffApiRequestBody = '''
{
  "applicant": ["rec4DCipGj6qh1yVt"],
  "Status": "${escapeStringForJson(status)}", 
  "comments": "${escapeStringForJson(coverletter)}",
  "job_id":["recm8r1h3Il6WUkat"]  
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new Applications',
      apiUrl: '${baseUrl}/table/tbl6OYYz542YS7fgs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetApplicationsByIDCall {
  Future<ApiCallResponse> call({
    String? status = 'Awaiting Feed back',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Applications by ID',
      apiUrl: '${baseUrl}/table/tbl6OYYz542YS7fgs/${status}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateApplicationsCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_application": "recDRUFLFCOo7a51k",
  "applicant": "[\\"rec4DCipGj6qh1yVt\\"]",
  "applicant_name": "[\\"Likhin Nelliyotan\\"]",
  "Status": "Awaiting Feed back",
  "createdAt": "2025-03-18T02:54:16.000Z",
  "updated_time": "2025-03-28T09:40:13.000Z",
  "applied_time": "2025-03-18T02:54:00.000Z",
  "comments": "{\\"state\\":\\"error\\",\\"errorType\\":\\"emptyDependency\\",\\"value\\":\\"Likhin Nelliyotan has applied for the Senior UX Designer position and is currently awaiting feedback on their application.\\",\\"isStale\\":false}",
  "job_id": "[\\"recm8r1h3Il6WUkat\\"]",
  "job_title": "[\\"Senior UX Designer\\"]",
  "created_at": "[\\"2025-03-18T01:23:26.000Z\\"]",
  "type": "[\\"Full-time\\"]",
  "required_skills": "[\\"UI designing\\",\\"Photoshop\\",\\"Figma\\"]",
  "required_attachments": "[\\"Resume/CV\\",\\"Portfolio\\"]",
  "ctc": "[\\"\$120,00 - \$150,000\\"]",
  "company_id": "[\\"recawyyOT4DbOjwrR\\"]",
  "company_name": "[\\"Emvigo Technologies Pvt Ltd\\"]",
  "company_descriptionfromjob_id": "[\\"At Emvigo Technologies, we’re all about making technology work for people. We’re a team of problem solvers, thinkers, and creators who believe that the best technology is the kind that makes life a bit easier, whether it’s for a global business or a single user.\\\\n\\\\nWith roots in both the UK and India, we’re an ISO 9001:2015 certified IT services provider on a mission to make life a little simpler and smarter through innovation. Headquartered in the United Kingdom with a dedicated Research and Development Center in India, we focus on creating solutions that range from the straightforward to the complex—all designed to meet the unique needs of businesses and individuals. Whether it's using AI for rapid development or helping businesses transform digitally, we keep innovation at the heart of what we do.\\\\n\\\\nThe name Emvigo blends two ideas we believe in deeply: \\\\\\"Empirical\\\\\\" (grounded in observation) and \\\\\\"Novigo\\\\\\" (which means innovation in Esperanto). It’s a reflection of how we approach every project—using insights to drive creative, practical solutions.\\"]",
  "job_location": "[\\"Ernakulam\\"]",
  "users_applied": "[\\"rec4DCipGj6qh1yVt\\"]",
  "company_logo": "[{\\"id\\":\\"att0UwopbJrEBvdae\\",\\"width\\":225,\\"height\\":225,\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/vhkaWARwBht5EC-zQDiCUA/6DWwMsV14HK-GewVphL8UKD8l86MwfNp3xgWeb81O6K1tUxiov1n58lsxZqdW8W2wQqNj4w7zZBuIF5Fvke-ifr3O1R-DaKDz2UI0yiEG8K_4EcBZWLJ0toKM2xCd_sRBlqS7N6XKEwmBZ-P2nsH5E2LKIMdpxNs6DM4qUMG0-o/G3DcWQlehnebs_eraiXWXDp31EsmegrfTdfexSWFeeQ\\",\\"filename\\":\\"emvigo logo.png\\",\\"size\\":4350,\\"type\\":\\"image/png\\",\\"thumbnails\\":{\\"small\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/1ThEjGAruh9cOz8TePHSMA/PP8xt2aJnzzNATltpKRscXKF3wJHsiHqrmGUyrBOn5aPd0TQxxho5Aq5guZzdWU_wjPxpMbAlmXGJmBTxky42m_s0n1s87SeEkjTJ4CaVetFn0YG5RkvOtIyyEdNXuIPJGmtVX4OfBqI9DXRWwC0-g/PAviNbXC3dm7k5PsLlMUpJM2O1VCPPpVhL2mfNONRIo\\",\\"width\\":36,\\"height\\":36},\\"large\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/c0iOAaJAesbjGaZjN_ON0w/Iz7tH779tnggVEi9QzkGZbRiidPZrNW6_OMFyoet1-6zIPZO1QmvrNqYOR2NahhCsj9BVIhpRqvwfbrZA3qSiarFMdHucWx2NbQYJ2E8GXouGEGfS-45HvYZ9z8yx1PStpwEvC0pgV77VhWnGaGSCQ/mvi4n-MWk9nDwjx57UnwYyaC8mh5R1YA-IWTi1kcADQ\\",\\"width\\":225,\\"height\\":225},\\"full\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/9E0SUWNiW-50PuMaizxmVw/DG_pzvc3fDzVEOUAt6bHxAU3DAgQD-pm5ijXtHs2gD5kdPTgKYO0qwozuAvZEAHKLxb8ZPUqnXLbVVG0xSkFzOKQGPjVOabb7PkI8Sn67BsMr5ARIvZd1HWvLYNZHkX0kns0MlnVFa1cODXfIqLl9g/zG4Pjx6ZcUUR9zjX2hF9A4eiuM0PBw39duYqDnhDo8M\\",\\"width\\":225,\\"height\\":225}}}]",
  "educational_qualificationfromjob_id": "[\\"B-Tech\\",\\"Diploma - Computer Engneering\\",\\"Diploma - computer Science\\"]",
  "created_name": "[\\"Arjun\\"]",
  "created_position": "[\\"HR Manager\\"]",
  "Jobs": "recm8r1h3Il6WUkat"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Applications',
      apiUrl: '${baseUrl}/table/tbl6OYYz542YS7fgs/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteApplicationsCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Applications',
      apiUrl: '${baseUrl}/table/tbl6OYYz542YS7fgs/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListUsersCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? sortField = '',
    String? sortDirection = '',
    String? offset = '',
    int? page,
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Users',
      apiUrl: '${baseUrl}/table/tbl2yTLVbRfwENImL',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {
        'filter': filter,
        'sort_field': sortField,
        'sort_direction': sortDirection,
        'offset': offset,
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewUsersCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_user": "rec4DCipGj6qh1yVt",
  "uid": "Pz7gNm6kqWP8Q97Kj3H3u8fVPtz1",
  "name": "Likhin Nelliyotan",
  "profile_summery": "Innovative and results-driven Android Developer with over a decade of expertise in designing, developing, and deploying high-performance, user-centric mobile applications. Skilled in Java, Kotlin, and Android SDK, with a strong background in integrating RESTful APIs, enhancing app performance, and ensuring seamless user experiences. Adept at leading cross-functional teams, mentoring junior developers, and collaborating with designers and product managers to deliver robust, scalable solutions. Passionate about staying up-to-date with emerging technologies and implementing best coding practices to create next-level mobile applications.",
  "address": "Nelliyotan House, karat, Ezhilode po\\n",
  "phone": "+91 9562005047",
  "resume": "[{\\"id\\":\\"attZqTAIZ4AIlVDv7\\",\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/fTp_Y-64PZcOE2r08abZNQ/pgStUHmF7TNe5ud1CXs7DPtDzwjS6jqRCdiP17iJoRHJ06-EoyVz40uDQLIeM6bPTIDJbS_bqOtPzGIVZ47lFeKRpZKiIoe6Wp6tMqOLrCLpOswhEsqKeUXg9vcLB4NyASr-v3ABqmOC6KorR642XnoleUP5WNGHMshsk9Ekj7g/FNVzznpW-gvUYaEb_aTBTBPxOT_2QFcw2RtaYPTRViU\\",\\"filename\\":\\"Meeting Launch day.pdf\\",\\"size\\":576369,\\"type\\":\\"application/pdf\\",\\"thumbnails\\":{\\"small\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/dM0eY2UfGWi151lbpDjPZg/yvZGMJtCG13AyZBjR388N6cS8wvsDDDBtUA1IIpScWi9Rbkmod4sCmhjMLYWSzZYE9rNfx9oe4sW5iZDWFoxVaP1Ctu9cvHzYo3QYUcG1K43eLA-I0S8SFRL7RCPfFldxr9MpQyKhj1PwVktbnryWw/ye-QCQ7y2LsN67RYA1ucCclOdy-MiV_zlhGYxsznlyA\\",\\"width\\":25,\\"height\\":35},\\"large\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/EB2BOUrTI9-mkWvnKZ3P9g/fY52JqYUw8uXVCieSOlvj9UZk3Cz7Q2z6gtRQw4O60885E3PEjUtb7_sDfopFrAHGX5EEmijF8ClOW8O7-rcH-NfO70j1nlFxVKFdOzq5nqU0eCFS5nsFVOkTUGYpZvnWVu2avYZPz45DCs7UciZmA/NBf-_9GFuQnhscf1YAqkzBL-nyJg99gDfErh00pxies\\",\\"width\\":512,\\"height\\":724}}}]",
  "skills": "[\\"rec677MnHOX9NTNI1\\",\\"recmX2PkGO0CN74CK\\",\\"recVbgKnqqY2uex9M\\",\\"recJg0ObK5b3hLZpB\\"]",
  "skill_title": "[\\"Flutter\\",\\"Kotlin\\",\\"Creativity and innovation\\",\\"Java\\"]",
  "profile_pic": "https://lh3.googleusercontent.com/a/ACg8ocKwlsAkDrUhnD7edonkNb11MBba3YbiifWEtkQE3zolonSheWJU=s96-c",
  "notice_period": 90,
  "applications": "[\\"recDRUFLFCOo7a51k\\",\\"recER1dip0MxrDAUf\\"]",
  "current_company": "Emvigo Technologies",
  "current_position": "Be Technology Lead",
  "total_experience": 12,
  "notification_email": true,
  "push_notification": true,
  "Jobs": "string",
  "favorite_jobs": "[\\"recyy8VShyo3FXDve\\"]",
  "userType": "jobSeeker",
  "company": "string",
  "id_company": "string",
  "company_name": "string",
  "logo": "string",
  "created_jobs": "string",
  "position": "string",
  "Jobs3": "string",
  "social_media": "[\\"recuKSErc0MLiuaf4\\",\\"recM4v4lG3IJ2AwiU\\"]",
  "social_name": "[\\"Linkedin\\",\\"Instagram\\"]",
  "social_media_link": "[\\"https://www.linkedin.com/in/likhin-nelliyotan-34455b123\\",\\"https://www.instagram.com/likhinnelliyotan007/\\"]",
  "email": "likhin@emvigotech.com",
  "Jobs2": "[\\"recm8r1h3Il6WUkat\\"]",
  "Jobs4": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new Users',
      apiUrl: '${baseUrl}/table/tbl2yTLVbRfwENImL',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUsersByIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Users by ID',
      apiUrl: '${baseUrl}/table/tbl2yTLVbRfwENImL/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUsersCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_user": "rec4DCipGj6qh1yVt",
  "uid": "Pz7gNm6kqWP8Q97Kj3H3u8fVPtz1",
  "name": "Likhin Nelliyotan",
  "profile_summery": "Innovative and results-driven Android Developer with over a decade of expertise in designing, developing, and deploying high-performance, user-centric mobile applications. Skilled in Java, Kotlin, and Android SDK, with a strong background in integrating RESTful APIs, enhancing app performance, and ensuring seamless user experiences. Adept at leading cross-functional teams, mentoring junior developers, and collaborating with designers and product managers to deliver robust, scalable solutions. Passionate about staying up-to-date with emerging technologies and implementing best coding practices to create next-level mobile applications.",
  "address": "Nelliyotan House, karat, Ezhilode po\\n",
  "phone": "+91 9562005047",
  "resume": "[{\\"id\\":\\"attZqTAIZ4AIlVDv7\\",\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/fTp_Y-64PZcOE2r08abZNQ/pgStUHmF7TNe5ud1CXs7DPtDzwjS6jqRCdiP17iJoRHJ06-EoyVz40uDQLIeM6bPTIDJbS_bqOtPzGIVZ47lFeKRpZKiIoe6Wp6tMqOLrCLpOswhEsqKeUXg9vcLB4NyASr-v3ABqmOC6KorR642XnoleUP5WNGHMshsk9Ekj7g/FNVzznpW-gvUYaEb_aTBTBPxOT_2QFcw2RtaYPTRViU\\",\\"filename\\":\\"Meeting Launch day.pdf\\",\\"size\\":576369,\\"type\\":\\"application/pdf\\",\\"thumbnails\\":{\\"small\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/dM0eY2UfGWi151lbpDjPZg/yvZGMJtCG13AyZBjR388N6cS8wvsDDDBtUA1IIpScWi9Rbkmod4sCmhjMLYWSzZYE9rNfx9oe4sW5iZDWFoxVaP1Ctu9cvHzYo3QYUcG1K43eLA-I0S8SFRL7RCPfFldxr9MpQyKhj1PwVktbnryWw/ye-QCQ7y2LsN67RYA1ucCclOdy-MiV_zlhGYxsznlyA\\",\\"width\\":25,\\"height\\":35},\\"large\\":{\\"url\\":\\"https://v5.airtableusercontent.com/v3/u/39/39/1743408000000/EB2BOUrTI9-mkWvnKZ3P9g/fY52JqYUw8uXVCieSOlvj9UZk3Cz7Q2z6gtRQw4O60885E3PEjUtb7_sDfopFrAHGX5EEmijF8ClOW8O7-rcH-NfO70j1nlFxVKFdOzq5nqU0eCFS5nsFVOkTUGYpZvnWVu2avYZPz45DCs7UciZmA/NBf-_9GFuQnhscf1YAqkzBL-nyJg99gDfErh00pxies\\",\\"width\\":512,\\"height\\":724}}}]",
  "skills": "[\\"rec677MnHOX9NTNI1\\",\\"recmX2PkGO0CN74CK\\",\\"recVbgKnqqY2uex9M\\",\\"recJg0ObK5b3hLZpB\\"]",
  "skill_title": "[\\"Flutter\\",\\"Kotlin\\",\\"Creativity and innovation\\",\\"Java\\"]",
  "profile_pic": "https://lh3.googleusercontent.com/a/ACg8ocKwlsAkDrUhnD7edonkNb11MBba3YbiifWEtkQE3zolonSheWJU=s96-c",
  "notice_period": 90,
  "applications": "[\\"recDRUFLFCOo7a51k\\",\\"recER1dip0MxrDAUf\\"]",
  "current_company": "Emvigo Technologies",
  "current_position": "Be Technology Lead",
  "total_experience": 12,
  "notification_email": true,
  "push_notification": true,
  "Jobs": "string",
  "favorite_jobs": "[\\"recyy8VShyo3FXDve\\"]",
  "userType": "jobSeeker",
  "company": "string",
  "id_company": "string",
  "company_name": "string",
  "logo": "string",
  "created_jobs": "string",
  "position": "string",
  "Jobs3": "string",
  "social_media": "[\\"recuKSErc0MLiuaf4\\",\\"recM4v4lG3IJ2AwiU\\"]",
  "social_name": "[\\"Linkedin\\",\\"Instagram\\"]",
  "social_media_link": "[\\"https://www.linkedin.com/in/likhin-nelliyotan-34455b123\\",\\"https://www.instagram.com/likhinnelliyotan007/\\"]",
  "email": "likhin@emvigotech.com",
  "Jobs2": "[\\"recm8r1h3Il6WUkat\\"]",
  "Jobs4": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Users',
      apiUrl: '${baseUrl}/table/tbl2yTLVbRfwENImL/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUsersCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Users',
      apiUrl: '${baseUrl}/table/tbl2yTLVbRfwENImL/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListUserLinkedJobsCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? sortField = '',
    String? sortDirection = '',
    String? offset = '',
    int? page,
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List User_linked_jobs',
      apiUrl: '${baseUrl}/table/tblBVqrIzXo8Ndb5G',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {
        'filter': filter,
        'sort_field': sortField,
        'sort_direction': sortDirection,
        'offset': offset,
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewUserLinkedJobsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user_id": "string",
  "job_id": "string",
  "applied_time": "2025-03-21T01:33:20.000Z",
  "is_applied": true,
  "is_favorite": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new User_linked_jobs',
      apiUrl: '${baseUrl}/table/tblBVqrIzXo8Ndb5G',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserLinkedJobsByIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get User_linked_jobs by ID',
      apiUrl: '${baseUrl}/table/tblBVqrIzXo8Ndb5G/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserLinkedJobsCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user_id": "string",
  "job_id": "string",
  "applied_time": "2025-03-21T01:33:20.000Z",
  "is_applied": true,
  "is_favorite": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update User_linked_jobs',
      apiUrl: '${baseUrl}/table/tblBVqrIzXo8Ndb5G/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUserLinkedJobsCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete User_linked_jobs',
      apiUrl: '${baseUrl}/table/tblBVqrIzXo8Ndb5G/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListJobLocationCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? sortField = '',
    String? sortDirection = '',
    String? offset = '',
    int? page,
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Job_location',
      apiUrl: '${baseUrl}/table/tbl3ev418grLkQM7H',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {
        'filter': filter,
        'sort_field': sortField,
        'sort_direction': sortDirection,
        'offset': offset,
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewJobLocationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_job_location": "rec1YO8dYMxb3rH6j",
  "location_name": "Kollam",
  "lat_long": "string",
  "Jobs": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new Job_location',
      apiUrl: '${baseUrl}/table/tbl3ev418grLkQM7H',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetJobLocationByIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Job_location by ID',
      apiUrl: '${baseUrl}/table/tbl3ev418grLkQM7H/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateJobLocationCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_job_location": "rec1YO8dYMxb3rH6j",
  "location_name": "Kollam",
  "lat_long": "string",
  "Jobs": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Job_location',
      apiUrl: '${baseUrl}/table/tbl3ev418grLkQM7H/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteJobLocationCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Job_location',
      apiUrl: '${baseUrl}/table/tbl3ev418grLkQM7H/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListQualificationCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? sortField = '',
    String? sortDirection = '',
    String? offset = '',
    int? page,
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Qualification',
      apiUrl: '${baseUrl}/table/tblz5wqNgkLdWKEkF',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {
        'filter': filter,
        'sort_field': sortField,
        'sort_direction': sortDirection,
        'offset': offset,
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewQualificationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_qualification": "recHHdRIZ27i6R4KD",
  "educationall_qualification": "BCA",
  "Jobs": "string",
  "Jobs2": "[\\"recyy8VShyo3FXDve\\",\\"recw4O403AEaJP1FW\\",\\"recALH6cvOegXCHep\\"]"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new Qualification',
      apiUrl: '${baseUrl}/table/tblz5wqNgkLdWKEkF',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetQualificationByIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Qualification by ID',
      apiUrl: '${baseUrl}/table/tblz5wqNgkLdWKEkF/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateQualificationCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_qualification": "recHHdRIZ27i6R4KD",
  "educationall_qualification": "BCA",
  "Jobs": "string",
  "Jobs2": "[\\"recyy8VShyo3FXDve\\",\\"recw4O403AEaJP1FW\\",\\"recALH6cvOegXCHep\\"]"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Qualification',
      apiUrl: '${baseUrl}/table/tblz5wqNgkLdWKEkF/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteQualificationCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Qualification',
      apiUrl: '${baseUrl}/table/tblz5wqNgkLdWKEkF/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListSocialMediaCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? sortField = '',
    String? sortDirection = '',
    String? offset = '',
    int? page,
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Social_media',
      apiUrl: '${baseUrl}/table/tblHcrQk9S6RKZhOn',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {
        'filter': filter,
        'sort_field': sortField,
        'sort_direction': sortDirection,
        'offset': offset,
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewSocialMediaCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "rec7ZISGgoroxIsEJ",
  "Name": "Linkedin",
  "link": "string",
  "users": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new Social_media',
      apiUrl: '${baseUrl}/table/tblHcrQk9S6RKZhOn',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSocialMediaByIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Social_media by ID',
      apiUrl: '${baseUrl}/table/tblHcrQk9S6RKZhOn/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateSocialMediaCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "rec7ZISGgoroxIsEJ",
  "Name": "Linkedin",
  "link": "string",
  "users": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Social_media',
      apiUrl: '${baseUrl}/table/tblHcrQk9S6RKZhOn/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteSocialMediaCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Social_media',
      apiUrl: '${baseUrl}/table/tblHcrQk9S6RKZhOn/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End FlutterFlow + Airtable ApiFlow API Group Code

class GetJobsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetJobs',
      apiUrl:
          'https://api.airtable.com/v0/appJKgkl97fdeogfx/Jobs?maxRecords=3&view=Grid%20view',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MGQzYTMzNGJhYjhlZGY1MzZkODQzYTJkMzk5MjYyOTI6ZTYwNTgyOGI2MzhlNGMxNWJkMGJmYzZkZjRkYjBiOTI=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? jobsList(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
}

class GetSingleJobCall {
  static Future<ApiCallResponse> call({
    String? jobId = 'recm8r1h3Il6WUkat',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetSingleJob',
      apiUrl: 'https://api.airtable.com/v0/appJKgkl97fdeogfx/Jobs/${jobId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer patCrh3kOqydysuDz.ba56d69bb3bc6d77a6407ef20029bfb56ee5e5e9a6ee6d33e1b28c3fe52771f0',
      },
      params: {
        '[job_id]': jobId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? jobsList(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
}

class GetCompanyInfoCall {
  static Future<ApiCallResponse> call({
    String? companyId = 'recawyyOT4DbOjwrR',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCompanyInfo',
      apiUrl:
          'https://api.airtable.com/v0/appJKgkl97fdeogfx/companies/${companyId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer patCrh3kOqydysuDz.ba56d69bb3bc6d77a6407ef20029bfb56ee5e5e9a6ee6d33e1b28c3fe52771f0',
      },
      params: {
        '[company_id]': companyId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic companyfields(dynamic response) => getJsonField(
        response,
        r'''$.fields''',
      );
}

class GetJobsWithFilterCall {
  static Future<ApiCallResponse> call({
    String? filter = '{max_experience} > 5',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetJobsWithFilter',
      apiUrl:
          'https://api.airtable.com/v0/appJKgkl97fdeogfx/Jobs?filterByFormula=${filter}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer patCrh3kOqydysuDz.ba56d69bb3bc6d77a6407ef20029bfb56ee5e5e9a6ee6d33e1b28c3fe52771f0',
      },
      params: {
        '[filter]': filter,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? jobsList(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
}

class GetAppliedJobsCall {
  static Future<ApiCallResponse> call({
    String? filter =
        'FIND(\"recxdGyLZJ0vch9mE\", ARRAYJOIN({users_applied}, \",\"))',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAppliedJobs',
      apiUrl:
          'https://api.airtable.com/v0/appJKgkl97fdeogfx/Jobs?filterByFormula=${filter}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer patCrh3kOqydysuDz.ba56d69bb3bc6d77a6407ef20029bfb56ee5e5e9a6ee6d33e1b28c3fe52771f0',
      },
      params: {
        '[filter]': filter,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? jobsList(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
}

class GetFavouriteJobsCall {
  static Future<ApiCallResponse> call({
    String? filter =
        'FIND(\"recxdGyLZJ0vch9mE\", ARRAYJOIN({favourite_users}, \",\"))',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetFavouriteJobs',
      apiUrl:
          'https://api.airtable.com/v0/appJKgkl97fdeogfx/Jobs?filterByFormula=${filter}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer patCrh3kOqydysuDz.ba56d69bb3bc6d77a6407ef20029bfb56ee5e5e9a6ee6d33e1b28c3fe52771f0',
      },
      params: {
        '[filter]': filter,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? jobsList(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
}

class GetRecommendedJobsCall {
  static Future<ApiCallResponse> call({
    String? filter =
        'FIND(\"recxdGyLZJ0vch9mE\", ARRAYJOIN({favourite_users}, \",\"))',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetRecommendedJobs',
      apiUrl:
          'https://api.airtable.com/v0/appJKgkl97fdeogfx/Jobs?filterByFormula=${filter}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer patCrh3kOqydysuDz.ba56d69bb3bc6d77a6407ef20029bfb56ee5e5e9a6ee6d33e1b28c3fe52771f0',
      },
      params: {
        '[filter]': filter,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? jobsList(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
}

class GetSingleUserInfoCall {
  static Future<ApiCallResponse> call({
    String? userId = 'recxdGyLZJ0vch9mE',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getSingleUserInfo',
      apiUrl: 'https://api.airtable.com/v0/appJKgkl97fdeogfx/users/${userId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer patCrh3kOqydysuDz.ba56d69bb3bc6d77a6407ef20029bfb56ee5e5e9a6ee6d33e1b28c3fe52771f0',
      },
      params: {
        '[user_id]': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSingleJobInfoCall {
  static Future<ApiCallResponse> call({
    String? jobId = 'recm8r1h3Il6WUkat',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getSingleJobInfo',
      apiUrl: 'https://api.airtable.com/v0/appJKgkl97fdeogfx/Jobs/${jobId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer patCrh3kOqydysuDz.ba56d69bb3bc6d77a6407ef20029bfb56ee5e5e9a6ee6d33e1b28c3fe52771f0',
      },
      params: {
        '[job_id]': jobId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? jobId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? jobCreatedTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.createdTime''',
      ));
  static String? jobTitle(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.fields.title''',
      ));
  static String? jobDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.fields.description''',
      ));
  static bool? isJobActive(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.fields.status''',
      ));
  static List<String>? jobSkillsIdList(dynamic response) => (getJsonField(
        response,
        r'''$.fields.skills''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? ctc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.fields.ctc''',
      ));
  static List<String>? companyId(dynamic response) => (getJsonField(
        response,
        r'''$.fields.company''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? companyName(dynamic response) => (getJsonField(
        response,
        r'''$.fields.company_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? jobLocations(dynamic response) => (getJsonField(
        response,
        r'''$.fields.job_location_title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? jobSkillsTitleList(dynamic response) => (getJsonField(
        response,
        r'''$.fields.skill_title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? companyLogoUrl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.fields.company_logo[:].url''',
      ));
  static List<String>? companyDescription(dynamic response) => (getJsonField(
        response,
        r'''$.fields.company_description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetSingleCompanyInfoCall {
  static Future<ApiCallResponse> call({
    String? companyId = 'recawyyOT4DbOjwrR',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getSingleCompanyInfo',
      apiUrl:
          'https://api.airtable.com/v0/appJKgkl97fdeogfx/companies/${companyId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer patCrh3kOqydysuDz.ba56d69bb3bc6d77a6407ef20029bfb56ee5e5e9a6ee6d33e1b28c3fe52771f0',
      },
      params: {
        '[company_id]': companyId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic companyfields(dynamic response) => getJsonField(
        response,
        r'''$.fields''',
      );
}

class CreateJobCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "records": [
    {
      "fields": {
        "title": "Senior UX Designer",
        "description": "We are looking for a Senior UX Designer to join our product team. The ideal candidate will have a strong portfolio demonstrating exceptional user-cent...",
        "status": true,
        "type": "Full-time",
        "skills": [
          "recUEJtAcEHKAMu0a",
          "recolYfU3eF7qf4MD",
          "recEjPQm4aIHxeuLA"
        ],
        "Required Attachments": [
          "Resume/CV",
          "Portfolio"
        ],
        "ctc": "\$120,00 - \$150,000",
        "company": [
          "recawyyOT4DbOjwrR"
        ],
        "applications": [
          "recDRUFLFCOo7a51k"
        ],
        "min_experience": 1,
        "max_experience": 2,
        "job_location": [
          "recXPvd3fSuWWxbse"
        ]
      }
    },
    {
      "fields": {
        "title": "Senior Android Developer",
        "description": "We are looking for a Senior Android Developer to design and develop Android solutions. The ideal candidate will have expertise in Android (Java/Kotlin...",
        "status": true,
        "type": "Full-time",
        "skills": [
          "rec677MnHOX9NTNI1",
          "recy59tQCMvFM8jMZ",
          "recUEJtAcEHKAMu0a"
        ],
        "Required Attachments": [
          "Resume/CV"
        ],
        "ctc": "\$1650,00 - \$200,000",
        "company": [
          "recrguiPV8c4CPsEM"
        ],
        "min_experience": 2,
        "max_experience": 6,
        "job_location": [
          "recPaH4vw6ey4aVUW"
        ]
      }
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateJob',
      apiUrl: 'https://api.airtable.com/v0/appJKgkl97fdeogfx/Jobs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer patCrh3kOqydysuDz.ba56d69bb3bc6d77a6407ef20029bfb56ee5e5e9a6ee6d33e1b28c3fe52771f0',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetApplicationFromUserIdAndJobIdCall {
  static Future<ApiCallResponse> call({
    String? applicant = 'rec4DCipGj6qh1yVt',
    String? jobId = 'recm8r1h3Il6WUkat',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetApplicationFromUserIdAnd JobId',
      apiUrl:
          'https://api.airtable.com/v0/appJKgkl97fdeogfx/applications?filterByFormula=AND(FIND(\'${applicant}\', applicant), FIND(\'${jobId}\', job_id))',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer patCrh3kOqydysuDz.ba56d69bb3bc6d77a6407ef20029bfb56ee5e5e9a6ee6d33e1b28c3fe52771f0',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? applicationStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.records[:].fields.Status''',
      ));
  static String? appliedTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.records[:].createdTime''',
      ));
  static int? applicationNumber(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.records[:].fields.application_number''',
      ));
  static String? commentFromRecruter(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.records[:].fields.comments.value''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
