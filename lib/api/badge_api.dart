part of azure_devops_sdk.api;



class BadgeApi {
  final ApiClient apiClient;

  BadgeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// This endpoint is deprecated. Please see the Build Status REST endpoint.
  Future<String> callGet(String organization, String project, int definitionId, String apiVersion, { String branchName }) async {
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
    String path = "/{organization}/_apis/public/build/definitions/{project}/{definitionId}/badge".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "definitionId" + "}", definitionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(branchName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "branchName", branchName));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["accessToken"];

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
  /// Gets a badge that indicates the status of the most recent build for the specified branch.
  Future<String> get Build Badge Data(String organization, String project, String repoType, String apiVersion, { String repoId, String branchName }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(repoType == null) {
     throw ApiException(400, "Missing required param: repoType");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/build/repos/{repoType}/badge".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "repoType" + "}", repoType.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(repoId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "repoId", repoId));
    }
    if(branchName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "branchName", branchName));
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
}
