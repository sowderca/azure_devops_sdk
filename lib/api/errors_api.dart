part of azure_devops_sdk.api;



class ErrorsApi {
  final ApiClient apiClient;

  ErrorsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// 
  Future<LoadTestErrors> callGet(String organization, String testRunId, String apiVersion, { String type, String subType, bool detailed }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(testRunId == null) {
     throw ApiException(400, "Missing required param: testRunId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/clt/testRuns/{testRunId}/errors".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "testRunId" + "}", testRunId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(type != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "type", type));
    }
    if(subType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "subType", subType));
    }
    if(detailed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "detailed", detailed));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'LoadTestErrors') as LoadTestErrors;
    } else {
      return null;
    }
  }
}
