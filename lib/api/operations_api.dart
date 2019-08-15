part of azure_devops_sdk.api;



class OperationsApi {
  final ApiClient apiClient;

  OperationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Gets an operation from the the operationId using the given pluginId.  Some scenarios donât require a pluginId. If a pluginId is not included in the call then just the operationId will be used to find an operation.
  Future<Operation> callGet(String operationId, String organization, String apiVersion, { String pluginId }) async {
    Object postBody;

    // verify required params are set
    if(operationId == null) {
     throw ApiException(400, "Missing required param: operationId");
    }
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/operations/{operationId}".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString()).replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(pluginId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pluginId", pluginId));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Operation') as Operation;
    } else {
      return null;
    }
  }
}
