part of azure_devops_sdk.api;



class SecurityNamespacesApi {
  final ApiClient apiClient;

  SecurityNamespacesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// List all security namespaces or just the specified namespace.
  Future<List<SecurityNamespaceDescription>> query(String organization, String securityNamespaceId, String apiVersion, { bool localOnly }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(securityNamespaceId == null) {
     throw ApiException(400, "Missing required param: securityNamespaceId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/securitynamespaces/{securityNamespaceId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "securityNamespaceId" + "}", securityNamespaceId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(localOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "localOnly", localOnly));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<SecurityNamespaceDescription>') as List).map((item) => item as SecurityNamespaceDescription).toList();
    } else {
      return null;
    }
  }
}
