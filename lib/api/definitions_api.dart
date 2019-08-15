part of azure_devops_sdk.api;



class DefinitionsApi {
  final ApiClient apiClient;

  DefinitionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Gets a definition, optionally at a specific revision.
  Future<BuildDefinition> callGet(String organization, String project, int definitionId, String apiVersion, { int revision, DateTime minMetricsTime, String propertyFilters, bool includeLatestBuilds }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(definitionId == null) {
     throw ApiException(400, "Missing required param: definitionId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/build/definitions/{definitionId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "definitionId" + "}", definitionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(revision != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "revision", revision));
    }
    if(minMetricsTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minMetricsTime", minMetricsTime));
    }
    if(propertyFilters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "propertyFilters", propertyFilters));
    }
    if(includeLatestBuilds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeLatestBuilds", includeLatestBuilds));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'BuildDefinition') as BuildDefinition;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a release definition.
  Future<ReleaseDefinition> callGet_1(String organization, String project, int definitionId, String apiVersion, { String propertyFilters }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(definitionId == null) {
     throw ApiException(400, "Missing required param: definitionId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/release/definitions/{definitionId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "definitionId" + "}", definitionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(propertyFilters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "propertyFilters", propertyFilters));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'ReleaseDefinition') as ReleaseDefinition;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Creates a new definition.
  Future<BuildDefinition> create(String organization, String project, String apiVersion, BuildDefinition body, { int definitionToCloneId, int definitionToCloneRevision }) async {
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
    String path = "/{organization}/{project}/_apis/build/definitions".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(definitionToCloneId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "definitionToCloneId", definitionToCloneId));
    }
    if(definitionToCloneRevision != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "definitionToCloneRevision", definitionToCloneRevision));
    }
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'BuildDefinition') as BuildDefinition;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Create a release definition
  Future<ReleaseDefinition> create_2(String organization, String project, String apiVersion, ReleaseDefinition body) async {
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
    String path = "/{organization}/{project}/_apis/release/definitions".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'ReleaseDefinition') as ReleaseDefinition;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Deletes a definition and all associated builds.
  Future delete(String organization, String project, int definitionId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(definitionId == null) {
     throw ApiException(400, "Missing required param: definitionId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/build/definitions/{definitionId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "definitionId" + "}", definitionId.toString());

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
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }
  /// 
  ///
  /// Delete a release definition.
  Future delete_3(String organization, String project, int definitionId, String apiVersion, { String comment, bool forceDelete }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(definitionId == null) {
     throw ApiException(400, "Missing required param: definitionId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/release/definitions/{definitionId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "definitionId" + "}", definitionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(comment != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "comment", comment));
    }
    if(forceDelete != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "forceDelete", forceDelete));
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
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }
  /// 
  ///
  /// Get release definition for a given definitionId and revision
  Future<String> get Definition Revision(String organization, String project, int definitionId, int revision, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(definitionId == null) {
     throw ApiException(400, "Missing required param: definitionId");
    }
    if(revision == null) {
     throw ApiException(400, "Missing required param: revision");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/Release/definitions/{definitionId}/revisions/{revision}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "definitionId" + "}", definitionId.toString()).replaceAll("{" + "revision" + "}", revision.toString());

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
  /// Gets all revisions of a definition.
  Future<List<BuildDefinitionRevision>> get Definition Revisions(String organization, String project, int definitionId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(definitionId == null) {
     throw ApiException(400, "Missing required param: definitionId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/build/definitions/{definitionId}/revisions".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "definitionId" + "}", definitionId.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<BuildDefinitionRevision>') as List).map((item) => item as BuildDefinitionRevision).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get revision history for a release definition
  Future<List<ReleaseDefinitionRevision>> get Release Definition History(String organization, String project, int definitionId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(definitionId == null) {
     throw ApiException(400, "Missing required param: definitionId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/Release/definitions/{definitionId}/revisions".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "definitionId" + "}", definitionId.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<ReleaseDefinitionRevision>') as List).map((item) => item as ReleaseDefinitionRevision).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets a list of definitions.
  Future<List<BuildDefinitionReference>> list(String organization, String project, String apiVersion, { String name, String repositoryId, String repositoryType, String queryOrder, int $top, String continuationToken, DateTime minMetricsTime, String definitionIds, String path, DateTime builtAfter, DateTime notBuiltAfter, bool includeAllProperties, bool includeLatestBuilds, String taskIdFilter, int processType, String yamlFilename }) async {
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
    String path = "/{organization}/{project}/_apis/build/definitions".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
    }
    if(repositoryId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "repositoryId", repositoryId));
    }
    if(repositoryType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "repositoryType", repositoryType));
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
    if(minMetricsTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minMetricsTime", minMetricsTime));
    }
    if(definitionIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "definitionIds", definitionIds));
    }
    if(path != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "path", path));
    }
    if(builtAfter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "builtAfter", builtAfter));
    }
    if(notBuiltAfter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "notBuiltAfter", notBuiltAfter));
    }
    if(includeAllProperties != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeAllProperties", includeAllProperties));
    }
    if(includeLatestBuilds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeLatestBuilds", includeLatestBuilds));
    }
    if(taskIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "taskIdFilter", taskIdFilter));
    }
    if(processType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "processType", processType));
    }
    if(yamlFilename != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "yamlFilename", yamlFilename));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<BuildDefinitionReference>') as List).map((item) => item as BuildDefinitionReference).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a list of release definitions.
  Future<List<ReleaseDefinition>> list_4(String organization, String project, String apiVersion, { String searchText, String $expand, String artifactType, String artifactSourceId, int $top, String continuationToken, String queryOrder, String path, bool isExactNameMatch, String tagFilter, String propertyFilters, String definitionIdFilter, bool isDeleted, bool searchTextContainsFolderName }) async {
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
    String path = "/{organization}/{project}/_apis/release/definitions".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(searchText != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchText", searchText));
    }
    if($expand != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$expand", $expand));
    }
    if(artifactType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "artifactType", artifactType));
    }
    if(artifactSourceId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "artifactSourceId", artifactSourceId));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
    }
    if(continuationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continuationToken", continuationToken));
    }
    if(queryOrder != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "queryOrder", queryOrder));
    }
    if(path != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "path", path));
    }
    if(isExactNameMatch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isExactNameMatch", isExactNameMatch));
    }
    if(tagFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tagFilter", tagFilter));
    }
    if(propertyFilters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "propertyFilters", propertyFilters));
    }
    if(definitionIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "definitionIdFilter", definitionIdFilter));
    }
    if(isDeleted != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isDeleted", isDeleted));
    }
    if(searchTextContainsFolderName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchTextContainsFolderName", searchTextContainsFolderName));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<ReleaseDefinition>') as List).map((item) => item as ReleaseDefinition).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Restores a deleted definition
  Future<BuildDefinition> restore Definition(String organization, String project, int definitionId, bool deleted, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(definitionId == null) {
     throw ApiException(400, "Missing required param: definitionId");
    }
    if(deleted == null) {
     throw ApiException(400, "Missing required param: deleted");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/build/definitions/{definitionId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "definitionId" + "}", definitionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "deleted", deleted));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'BuildDefinition') as BuildDefinition;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Updates an existing definition.
  Future<BuildDefinition> update(String organization, String project, int definitionId, String apiVersion, BuildDefinition body, { int secretsSourceDefinitionId, int secretsSourceDefinitionRevision }) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(definitionId == null) {
     throw ApiException(400, "Missing required param: definitionId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/build/definitions/{definitionId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "definitionId" + "}", definitionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(secretsSourceDefinitionId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "secretsSourceDefinitionId", secretsSourceDefinitionId));
    }
    if(secretsSourceDefinitionRevision != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "secretsSourceDefinitionRevision", secretsSourceDefinitionRevision));
    }
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'BuildDefinition') as BuildDefinition;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Update a release definition.
  Future<ReleaseDefinition> update_5(String organization, String project, String apiVersion, ReleaseDefinition body) async {
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
    String path = "/{organization}/{project}/_apis/release/definitions".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'ReleaseDefinition') as ReleaseDefinition;
    } else {
      return null;
    }
  }
}
