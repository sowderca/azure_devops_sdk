part of azure_devops_sdk.api;



class MergesApi {
  final ApiClient apiClient;

  MergesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get a specific merge operation&#39;s details.
  Future<GitMerge> callGet(String organization, String project, String repositoryNameOrId, int mergeOperationId, String apiVersion, { bool includeLinks }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(repositoryNameOrId == null) {
     throw ApiException(400, "Missing required param: repositoryNameOrId");
    }
    if(mergeOperationId == null) {
     throw ApiException(400, "Missing required param: mergeOperationId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryNameOrId}/merges/{mergeOperationId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "repositoryNameOrId" + "}", repositoryNameOrId.toString()).replaceAll("{" + "mergeOperationId" + "}", mergeOperationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeLinks", includeLinks));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GitMerge') as GitMerge;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Request a git merge operation. Currently we support merging only 2 commits.
  Future<GitMerge> create(String organization, String project, String repositoryNameOrId, String apiVersion, GitMergeParameters body, { bool includeLinks }) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(repositoryNameOrId == null) {
     throw ApiException(400, "Missing required param: repositoryNameOrId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryNameOrId}/merges".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "repositoryNameOrId" + "}", repositoryNameOrId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeLinks", includeLinks));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GitMerge') as GitMerge;
    } else {
      return null;
    }
  }
}
