part of azure_devops_sdk.api;



class ReleasesApi {
  final ApiClient apiClient;

  ReleasesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Create a release.
  Future<Release> create(String organization, String project, String apiVersion, ReleaseStartMetadata body) async {
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
    String path = "/{organization}/{project}/_apis/release/releases".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Release') as Release;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get logs for a release Id.
  Future<String> get Logs(String organization, String project, int releaseId, String apiVersion) async {
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
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/release/releases/{releaseId}/logs".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "releaseId" + "}", releaseId.toString());

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
  /// Get a release environment.
  Future<ReleaseEnvironment> get Release Environment(String organization, String project, int releaseId, int environmentId, String apiVersion) async {
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
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/Release/releases/{releaseId}/environments/{environmentId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "releaseId" + "}", releaseId.toString()).replaceAll("{" + "environmentId" + "}", environmentId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'ReleaseEnvironment') as ReleaseEnvironment;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get release for a given revision number.
  Future<String> get Release Revision(String organization, String project, int releaseId, int definitionSnapshotRevision, String apiVersion) async {
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
    if(definitionSnapshotRevision == null) {
     throw ApiException(400, "Missing required param: definitionSnapshotRevision");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/release/releases/{releaseId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "releaseId" + "}", releaseId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "definitionSnapshotRevision", definitionSnapshotRevision));
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
  /// Gets the task log of a release as a plain text file.
  Future<String> get Task Log(String organization, String project, int releaseId, int environmentId, int releaseDeployPhaseId, int taskId, String apiVersion, { int startLine, int endLine }) async {
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
    if(releaseDeployPhaseId == null) {
     throw ApiException(400, "Missing required param: releaseDeployPhaseId");
    }
    if(taskId == null) {
     throw ApiException(400, "Missing required param: taskId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/release/releases/{releaseId}/environments/{environmentId}/deployPhases/{releaseDeployPhaseId}/tasks/{taskId}/logs".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "releaseId" + "}", releaseId.toString()).replaceAll("{" + "environmentId" + "}", environmentId.toString()).replaceAll("{" + "releaseDeployPhaseId" + "}", releaseDeployPhaseId.toString()).replaceAll("{" + "taskId" + "}", taskId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(startLine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "startLine", startLine));
    }
    if(endLine != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "endLine", endLine));
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
  /// Get a list of releases
  Future<List<Release>> list(String organization, String project, String apiVersion, { int definitionId, int definitionEnvironmentId, String searchText, String createdBy, String statusFilter, int environmentStatusFilter, DateTime minCreatedTime, DateTime maxCreatedTime, String queryOrder, int $top, int continuationToken, String $expand, String artifactTypeId, String sourceId, String artifactVersionId, String sourceBranchFilter, bool isDeleted, String tagFilter, String propertyFilters, String releaseIdFilter, String path }) async {
    Object postBody;

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

    // create path and map variables
    String path = "/{organization}/{project}/_apis/release/releases".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(definitionId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "definitionId", definitionId));
    }
    if(definitionEnvironmentId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "definitionEnvironmentId", definitionEnvironmentId));
    }
    if(searchText != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchText", searchText));
    }
    if(createdBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "createdBy", createdBy));
    }
    if(statusFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "statusFilter", statusFilter));
    }
    if(environmentStatusFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "environmentStatusFilter", environmentStatusFilter));
    }
    if(minCreatedTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCreatedTime", minCreatedTime));
    }
    if(maxCreatedTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCreatedTime", maxCreatedTime));
    }
    if(queryOrder != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "queryOrder", queryOrder));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
    }
    if(continuationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continuationToken", continuationToken));
    }
    if($expand != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$expand", $expand));
    }
    if(artifactTypeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "artifactTypeId", artifactTypeId));
    }
    if(sourceId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sourceId", sourceId));
    }
    if(artifactVersionId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "artifactVersionId", artifactVersionId));
    }
    if(sourceBranchFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sourceBranchFilter", sourceBranchFilter));
    }
    if(isDeleted != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isDeleted", isDeleted));
    }
    if(tagFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tagFilter", tagFilter));
    }
    if(propertyFilters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "propertyFilters", propertyFilters));
    }
    if(releaseIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "releaseIdFilter", releaseIdFilter));
    }
    if(path != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "path", path));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Release>') as List).map((item) => item as Release).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Update a complete release object.
  Future<Release> update Release(String organization, String project, int releaseId, String apiVersion, Release body) async {
    Object postBody = body;

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
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/release/releases/{releaseId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "releaseId" + "}", releaseId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Release') as Release;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Update the status of a release environment
  Future<ReleaseEnvironment> update Release Environment(String organization, String project, int releaseId, int environmentId, String apiVersion, ReleaseEnvironmentUpdateMetadata body) async {
    Object postBody = body;

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
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/Release/releases/{releaseId}/environments/{environmentId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "releaseId" + "}", releaseId.toString()).replaceAll("{" + "environmentId" + "}", environmentId.toString());

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
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ReleaseEnvironment') as ReleaseEnvironment;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Update few properties of a release.
  Future<Release> update Release Resource(String organization, String project, int releaseId, String apiVersion, ReleaseUpdateMetadata body) async {
    Object postBody = body;

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
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/release/releases/{releaseId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "releaseId" + "}", releaseId.toString());

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
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Release') as Release;
    } else {
      return null;
    }
  }
}
