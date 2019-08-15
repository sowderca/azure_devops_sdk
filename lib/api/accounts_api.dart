part of azure_devops_sdk.api;



class AccountsApi {
  final ApiClient apiClient;

  AccountsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get a list of accounts for a specific owner or a specific member.
  Future<List<Account>> list(String apiVersion, { String ownerId, String memberId, String properties }) async {
    Object postBody;

    // verify required params are set
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/_apis/accounts".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(ownerId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ownerId", ownerId));
    }
    if(memberId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "memberId", memberId));
    }
    if(properties != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "properties", properties));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Account>') as List).map((item) => item as Account).toList();
    } else {
      return null;
    }
  }
}
