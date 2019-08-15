part of azure_devops_sdk.api;



class StorageKeysApi {
  final ApiClient apiClient;

  StorageKeysApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Resolve a descriptor to a storage key.
  Future<GraphStorageKeyResult> callGet(String subjectDescriptor, String organization, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(subjectDescriptor == null) {
     throw ApiException(400, "Missing required param: subjectDescriptor");
    }
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/graph/storagekeys/{subjectDescriptor}".replaceAll("{format}","json").replaceAll("{" + "subjectDescriptor" + "}", subjectDescriptor.toString()).replaceAll("{" + "organization" + "}", organization.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GraphStorageKeyResult') as GraphStorageKeyResult;
    } else {
      return null;
    }
  }
}
