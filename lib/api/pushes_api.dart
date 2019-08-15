part of azure_devops_sdk.api;



class PushesApi {
  final ApiClient apiClient;

  PushesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Retrieves a particular push.
  Future<GitPush> callGet(String organization, String repositoryId, int pushId, String project, String apiVersion, { int includeCommits, bool includeRefUpdates }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(repositoryId == null) {
     throw ApiException(400, "Missing required param: repositoryId");
    }
    if(pushId == null) {
     throw ApiException(400, "Missing required param: pushId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryId}/pushes/{pushId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryId" + "}", repositoryId.toString()).replaceAll("{" + "pushId" + "}", pushId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeCommits != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeCommits", includeCommits));
    }
    if(includeRefUpdates != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeRefUpdates", includeRefUpdates));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GitPush') as GitPush;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Push changes to the repository.
  Future<GitPush> create(String organization, String repositoryId, String project, String apiVersion, GitPush body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(repositoryId == null) {
     throw ApiException(400, "Missing required param: repositoryId");
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
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryId}/pushes".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryId" + "}", repositoryId.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GitPush') as GitPush;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieves pushes associated with the specified repository.
  Future<List<GitPush>> list(String organization, String repositoryId, String project, String apiVersion, { int $skip, int $top, bool searchCriteriaIncludeLinks, bool searchCriteriaIncludeRefUpdates, String searchCriteriaRefName, String searchCriteriaPusherId, DateTime searchCriteriaToDate, DateTime searchCriteriaFromDate }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(repositoryId == null) {
     throw ApiException(400, "Missing required param: repositoryId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryId}/pushes".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryId" + "}", repositoryId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if($skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$skip", $skip));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
    }
    if(searchCriteriaIncludeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.includeLinks", searchCriteriaIncludeLinks));
    }
    if(searchCriteriaIncludeRefUpdates != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.includeRefUpdates", searchCriteriaIncludeRefUpdates));
    }
    if(searchCriteriaRefName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.refName", searchCriteriaRefName));
    }
    if(searchCriteriaPusherId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.pusherId", searchCriteriaPusherId));
    }
    if(searchCriteriaToDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.toDate", searchCriteriaToDate));
    }
    if(searchCriteriaFromDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.fromDate", searchCriteriaFromDate));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<GitPush>') as List).map((item) => item as GitPush).toList();
    } else {
      return null;
    }
  }
}
