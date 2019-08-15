part of azure_devops_sdk.api;



class AttachmentsApi {
  final ApiClient apiClient;

  AttachmentsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Gets a specific attachment.
  Future<String> callGet(String organization, String project, int buildId, String timelineId, String recordId, String type, String name, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(buildId == null) {
     throw ApiException(400, "Missing required param: buildId");
    }
    if(timelineId == null) {
     throw ApiException(400, "Missing required param: timelineId");
    }
    if(recordId == null) {
     throw ApiException(400, "Missing required param: recordId");
    }
    if(type == null) {
     throw ApiException(400, "Missing required param: type");
    }
    if(name == null) {
     throw ApiException(400, "Missing required param: name");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/build/builds/{buildId}/{timelineId}/{recordId}/attachments/{type}/{name}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "buildId" + "}", buildId.toString()).replaceAll("{" + "timelineId" + "}", timelineId.toString()).replaceAll("{" + "recordId" + "}", recordId.toString()).replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Downloads an attachment.
  Future<String> callGet_1(String organization, String id, String project, String apiVersion, { String fileName, bool download }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wit/attachments/{id}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "id" + "}", id.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(fileName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "fileName", fileName));
    }
    if(download != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "download", download));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Creates an attachment in the wiki.
  Future<WikiAttachment> create(String organization, String project, String wikiIdentifier, String name, String apiVersion, String body, { String versionDescriptorVersionOptions, String versionDescriptorVersion, String versionDescriptorVersionType }) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(wikiIdentifier == null) {
     throw ApiException(400, "Missing required param: wikiIdentifier");
    }
    if(name == null) {
     throw ApiException(400, "Missing required param: name");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/attachments".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "wikiIdentifier" + "}", wikiIdentifier.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
    if(versionDescriptorVersionOptions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "versionDescriptor.versionOptions", versionDescriptorVersionOptions));
    }
    if(versionDescriptorVersion != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "versionDescriptor.version", versionDescriptorVersion));
    }
    if(versionDescriptorVersionType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "versionDescriptor.versionType", versionDescriptorVersionType));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = ["application/octet-stream"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WikiAttachment') as WikiAttachment;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Attach a file to a test result.
  Future<TestAttachmentReference> create Test Result Attachment(String organization, String project, int runId, int testCaseResultId, String apiVersion, TestAttachmentRequestModel body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(runId == null) {
     throw ApiException(400, "Missing required param: runId");
    }
    if(testCaseResultId == null) {
     throw ApiException(400, "Missing required param: testCaseResultId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/test/Runs/{runId}/Results/{testCaseResultId}/attachments".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "runId" + "}", runId.toString()).replaceAll("{" + "testCaseResultId" + "}", testCaseResultId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TestAttachmentReference') as TestAttachmentReference;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Attach a file to a test run.
  Future<TestAttachmentReference> create Test Run Attachment(String organization, String project, int runId, String apiVersion, TestAttachmentRequestModel body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(runId == null) {
     throw ApiException(400, "Missing required param: runId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/test/Runs/{runId}/attachments".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "runId" + "}", runId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TestAttachmentReference') as TestAttachmentReference;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Uploads an attachment.  On accounts with higher attachment upload limits (&gt;130MB), you will need to use chunked upload. To upload an attachment in multiple chunks, you first need to [**Start a Chunked Upload**](#start_a_chunked_upload) and then follow the example from the **Upload Chunk** section.
  Future<AttachmentReference> create_2(String organization, String project, String apiVersion, String body, { String fileName, String uploadType, String areaPath }) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wit/attachments".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(fileName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "fileName", fileName));
    }
    if(uploadType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "uploadType", uploadType));
    }
    if(areaPath != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "areaPath", areaPath));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = ["application/octet-stream"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'AttachmentReference') as AttachmentReference;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a release task attachment.
  Future<String> get Release Task Attachment Content(String organization, String project, int releaseId, int environmentId, int attemptId, String planId, String timelineId, String recordId, String type, String name, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(releaseId == null) {
     throw ApiException(400, "Missing required param: releaseId");
    }
    if(environmentId == null) {
     throw ApiException(400, "Missing required param: environmentId");
    }
    if(attemptId == null) {
     throw ApiException(400, "Missing required param: attemptId");
    }
    if(planId == null) {
     throw ApiException(400, "Missing required param: planId");
    }
    if(timelineId == null) {
     throw ApiException(400, "Missing required param: timelineId");
    }
    if(recordId == null) {
     throw ApiException(400, "Missing required param: recordId");
    }
    if(type == null) {
     throw ApiException(400, "Missing required param: type");
    }
    if(name == null) {
     throw ApiException(400, "Missing required param: name");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/release/releases/{releaseId}/environments/{environmentId}/attempts/{attemptId}/plan/{planId}/timelines/{timelineId}/records/{recordId}/attachments/{type}/{name}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "releaseId" + "}", releaseId.toString()).replaceAll("{" + "environmentId" + "}", environmentId.toString()).replaceAll("{" + "attemptId" + "}", attemptId.toString()).replaceAll("{" + "planId" + "}", planId.toString()).replaceAll("{" + "timelineId" + "}", timelineId.toString()).replaceAll("{" + "recordId" + "}", recordId.toString()).replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get the release task attachments.
  Future<List<ReleaseTaskAttachment>> get Release Task Attachments(String organization, String project, int releaseId, int environmentId, int attemptId, String planId, String type, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(releaseId == null) {
     throw ApiException(400, "Missing required param: releaseId");
    }
    if(environmentId == null) {
     throw ApiException(400, "Missing required param: environmentId");
    }
    if(attemptId == null) {
     throw ApiException(400, "Missing required param: attemptId");
    }
    if(planId == null) {
     throw ApiException(400, "Missing required param: planId");
    }
    if(type == null) {
     throw ApiException(400, "Missing required param: type");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/release/releases/{releaseId}/environments/{environmentId}/attempts/{attemptId}/plan/{planId}/attachments/{type}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "releaseId" + "}", releaseId.toString()).replaceAll("{" + "environmentId" + "}", environmentId.toString()).replaceAll("{" + "attemptId" + "}", attemptId.toString()).replaceAll("{" + "planId" + "}", planId.toString()).replaceAll("{" + "type" + "}", type.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<ReleaseTaskAttachment>') as List).map((item) => item as ReleaseTaskAttachment).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// GetTaskAttachmentContent API is deprecated. Use GetReleaseTaskAttachmentContent API instead.
  Future<String> get Task Attachment Content(String organization, String project, int releaseId, int environmentId, int attemptId, String timelineId, String recordId, String type, String name, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(releaseId == null) {
     throw ApiException(400, "Missing required param: releaseId");
    }
    if(environmentId == null) {
     throw ApiException(400, "Missing required param: environmentId");
    }
    if(attemptId == null) {
     throw ApiException(400, "Missing required param: attemptId");
    }
    if(timelineId == null) {
     throw ApiException(400, "Missing required param: timelineId");
    }
    if(recordId == null) {
     throw ApiException(400, "Missing required param: recordId");
    }
    if(type == null) {
     throw ApiException(400, "Missing required param: type");
    }
    if(name == null) {
     throw ApiException(400, "Missing required param: name");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/release/releases/{releaseId}/environments/{environmentId}/attempts/{attemptId}/timelines/{timelineId}/records/{recordId}/attachments/{type}/{name}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "releaseId" + "}", releaseId.toString()).replaceAll("{" + "environmentId" + "}", environmentId.toString()).replaceAll("{" + "attemptId" + "}", attemptId.toString()).replaceAll("{" + "timelineId" + "}", timelineId.toString()).replaceAll("{" + "recordId" + "}", recordId.toString()).replaceAll("{" + "type" + "}", type.toString()).replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// GetTaskAttachments API is deprecated. Use GetReleaseTaskAttachments API instead.
  Future<List<ReleaseTaskAttachment>> get Task Attachments(String organization, String project, int releaseId, int environmentId, int attemptId, String timelineId, String type, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(releaseId == null) {
     throw ApiException(400, "Missing required param: releaseId");
    }
    if(environmentId == null) {
     throw ApiException(400, "Missing required param: environmentId");
    }
    if(attemptId == null) {
     throw ApiException(400, "Missing required param: attemptId");
    }
    if(timelineId == null) {
     throw ApiException(400, "Missing required param: timelineId");
    }
    if(type == null) {
     throw ApiException(400, "Missing required param: type");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/release/releases/{releaseId}/environments/{environmentId}/attempts/{attemptId}/timelines/{timelineId}/attachments/{type}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "releaseId" + "}", releaseId.toString()).replaceAll("{" + "environmentId" + "}", environmentId.toString()).replaceAll("{" + "attemptId" + "}", attemptId.toString()).replaceAll("{" + "timelineId" + "}", timelineId.toString()).replaceAll("{" + "type" + "}", type.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<ReleaseTaskAttachment>') as List).map((item) => item as ReleaseTaskAttachment).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Download a test result attachment by its ID.
  Future<String> get Test Result Attachment Zip(String organization, String project, int runId, int testCaseResultId, int attachmentId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(runId == null) {
     throw ApiException(400, "Missing required param: runId");
    }
    if(testCaseResultId == null) {
     throw ApiException(400, "Missing required param: testCaseResultId");
    }
    if(attachmentId == null) {
     throw ApiException(400, "Missing required param: attachmentId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/test/Runs/{runId}/Results/{testCaseResultId}/attachments/{attachmentId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "runId" + "}", runId.toString()).replaceAll("{" + "testCaseResultId" + "}", testCaseResultId.toString()).replaceAll("{" + "attachmentId" + "}", attachmentId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get list of test result attachments reference.
  Future<List<TestAttachment>> get Test Result Attachments(String organization, String project, int runId, int testCaseResultId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(runId == null) {
     throw ApiException(400, "Missing required param: runId");
    }
    if(testCaseResultId == null) {
     throw ApiException(400, "Missing required param: testCaseResultId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/test/Runs/{runId}/Results/{testCaseResultId}/attachments".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "runId" + "}", runId.toString()).replaceAll("{" + "testCaseResultId" + "}", testCaseResultId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TestAttachment>') as List).map((item) => item as TestAttachment).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Download a test run attachment by its ID.
  Future<String> get Test Run Attachment Zip(String organization, String project, int runId, int attachmentId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(runId == null) {
     throw ApiException(400, "Missing required param: runId");
    }
    if(attachmentId == null) {
     throw ApiException(400, "Missing required param: attachmentId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/test/Runs/{runId}/attachments/{attachmentId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "runId" + "}", runId.toString()).replaceAll("{" + "attachmentId" + "}", attachmentId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get list of test run attachments reference.
  Future<List<TestAttachment>> get Test Run Attachments(String organization, String project, int runId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(runId == null) {
     throw ApiException(400, "Missing required param: runId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/test/Runs/{runId}/attachments".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "runId" + "}", runId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TestAttachment>') as List).map((item) => item as TestAttachment).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets the list of attachments of a specific type that are associated with a build.
  Future<List<Attachment>> list(String organization, String project, int buildId, String type, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(buildId == null) {
     throw ApiException(400, "Missing required param: buildId");
    }
    if(type == null) {
     throw ApiException(400, "Missing required param: type");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/build/builds/{buildId}/attachments/{type}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "buildId" + "}", buildId.toString()).replaceAll("{" + "type" + "}", type.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Attachment>') as List).map((item) => item as Attachment).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Uploads an attachment chunk.  Before performing [**Upload a Chunk**](#upload_a_chunk), make sure to have an attachment id returned in **Start a Chunked Upload** example on **Create** section. Specify the byte range of the chunk using Content-Length. For example: \&quot;Content - Length\&quot;: \&quot;bytes 0 - 39999 / 50000\&quot; for the first 40000 bytes of a 50000 byte file.
  Future<AttachmentReference> upload Chunk(String organization, String id, String contentRangeHeader, String project, String apiVersion, String body, { String fileName }) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(contentRangeHeader == null) {
     throw ApiException(400, "Missing required param: contentRangeHeader");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wit/attachments/{id}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "id" + "}", id.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(fileName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "fileName", fileName));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));
    headerParams["contentRangeHeader"] = contentRangeHeader;

    List<String> contentTypes = ["application/octet-stream"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'AttachmentReference') as AttachmentReference;
    } else {
      return null;
    }
  }
}
