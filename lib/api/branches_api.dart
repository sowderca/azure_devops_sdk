part of azure_devops_sdk.api;



class BranchesApi {
  final ApiClient apiClient;

  BranchesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get branch hierarchies below the specified scopePath
  Future<List<TfvcBranchRef>> get Branch Refs(String organization, String scopePath, String project, String apiVersion, { bool includeDeleted, bool includeLinks }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(scopePath == null) {
     throw ApiException(400, "Missing required param: scopePath");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/tfvc/branches".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "scopePath", scopePath));
    if(includeDeleted != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeDeleted", includeDeleted));
    }
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TfvcBranchRef>') as List).map((item) => item as TfvcBranchRef).toList();
    } else {
      return null;
    }
  }
}
