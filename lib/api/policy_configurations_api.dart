part of azure_devops_sdk.api;



class PolicyConfigurationsApi {
  final ApiClient apiClient;

  PolicyConfigurationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Retrieve a list of policy configurations by a given set of scope/filtering criteria.  Below is a short description of how all of the query parameters interact with each other: - repositoryId set, refName set: returns all policy configurations that *apply* to a particular branch in a repository - repositoryId set, refName unset: returns all policy configurations that *apply* to a particular repository - repositoryId unset, refName unset: returns all policy configurations that are *defined* at the project level - repositoryId unset, refName set: returns all project-level branch policies, plus the project level configurations For all of the examples above, when policyType is set, it&#39;ll restrict results to the given policy type
  Future<List<PolicyConfiguration>> callGet(String organization, String project, String apiVersion, { String repositoryId, String refName, String policyType, int $top, String continuationToken }) async {
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
    String path = "/{organization}/{project}/_apis/git/policy/configurations".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(repositoryId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "repositoryId", repositoryId));
    }
    if(refName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "refName", refName));
    }
    if(policyType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "policyType", policyType));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
    }
    if(continuationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continuationToken", continuationToken));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<PolicyConfiguration>') as List).map((item) => item as PolicyConfiguration).toList();
    } else {
      return null;
    }
  }
}
