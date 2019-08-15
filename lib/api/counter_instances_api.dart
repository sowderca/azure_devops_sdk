part of azure_devops_sdk.api;



class CounterInstancesApi {
  final ApiClient apiClient;

  CounterInstancesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// 
  Future<List<TestRunCounterInstance>> list(String organization, String testRunId, String groupNames, String apiVersion, { bool includeSummary }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(testRunId == null) {
     throw ApiException(400, "Missing required param: testRunId");
    }
    if(groupNames == null) {
     throw ApiException(400, "Missing required param: groupNames");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/clt/testRuns/{testRunId}/counterinstances".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "testRunId" + "}", testRunId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "groupNames", groupNames));
    if(includeSummary != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeSummary", includeSummary));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TestRunCounterInstance>') as List).map((item) => item as TestRunCounterInstance).toList();
    } else {
      return null;
    }
  }
}
