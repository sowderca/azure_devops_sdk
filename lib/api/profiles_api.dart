part of azure_devops_sdk.api;



class ProfilesApi {
  final ApiClient apiClient;

  ProfilesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Gets a user profile.
  Future<Profile> callGet(String id, String apiVersion, { bool details, bool withAttributes, String partition, String coreAttributes, bool forceRefresh }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/_apis/profile/profiles/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(details != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "details", details));
    }
    if(withAttributes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "withAttributes", withAttributes));
    }
    if(partition != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "partition", partition));
    }
    if(coreAttributes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "coreAttributes", coreAttributes));
    }
    if(forceRefresh != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "forceRefresh", forceRefresh));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Profile') as Profile;
    } else {
      return null;
    }
  }
}
