part of azure_devops_sdk.api;



class AccessControlEntriesApi {
  final ApiClient apiClient;

  AccessControlEntriesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Remove the specified ACEs from the ACL belonging to the specified token.
  Future<bool> remove Access Control Entries(String securityNamespaceId, String organization, String apiVersion, { String token, String descriptors }) async {
    Object postBody;

    // verify required params are set
    if(securityNamespaceId == null) {
     throw ApiException(400, "Missing required param: securityNamespaceId");
    }
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/accesscontrolentries/{securityNamespaceId}".replaceAll("{format}","json").replaceAll("{" + "securityNamespaceId" + "}", securityNamespaceId.toString()).replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(token != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "token", token));
    }
    if(descriptors != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "descriptors", descriptors));
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
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'bool') as bool;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Add or update ACEs in the ACL for the provided token. The request body contains the target token, a list of [ACEs](https://docs.microsoft.com/en-us/rest/api/azure/devops/security/access%20control%20entries/set%20access%20control%20entries?#accesscontrolentry) and a optional merge parameter. In the case of a collision (by identity descriptor) with an existing ACE in the ACL, the \&quot;merge\&quot; parameter determines the behavior. If set, the existing ACE has its allow and deny merged with the incoming ACE&#39;s allow and deny. If unset, the existing ACE is displaced.
  Future<List<AccessControlEntry>> set Access Control Entries(String securityNamespaceId, String organization, String apiVersion, JObject body) async {
    Object postBody = body;

    // verify required params are set
    if(securityNamespaceId == null) {
     throw ApiException(400, "Missing required param: securityNamespaceId");
    }
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/_apis/accesscontrolentries/{securityNamespaceId}".replaceAll("{format}","json").replaceAll("{" + "securityNamespaceId" + "}", securityNamespaceId.toString()).replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = ["application/json"];

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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<AccessControlEntry>') as List).map((item) => item as AccessControlEntry).toList();
    } else {
      return null;
    }
  }
}
