part of azure_devops_sdk.api;



class AccessControlListsApi {
  final ApiClient apiClient;

  AccessControlListsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Return a list of access control lists for the specified security namespace and token. All ACLs in the security namespace will be retrieved if no optional parameters are provided.
  Future<List<AccessControlList>> query(String securityNamespaceId, String organization, String apiVersion, { String token, String descriptors, bool includeExtendedInfo, bool recurse }) async {
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
    String path = "/{organization}/_apis/accesscontrollists/{securityNamespaceId}".replaceAll("{format}","json").replaceAll("{" + "securityNamespaceId" + "}", securityNamespaceId.toString()).replaceAll("{" + "organization" + "}", organization.toString());

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
    if(includeExtendedInfo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeExtendedInfo", includeExtendedInfo));
    }
    if(recurse != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "recurse", recurse));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<AccessControlList>') as List).map((item) => item as AccessControlList).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Remove access control lists under the specfied security namespace.
  Future<bool> remove Access Control Lists(String securityNamespaceId, String organization, String apiVersion, { String tokens, bool recurse }) async {
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
    String path = "/{organization}/_apis/accesscontrollists/{securityNamespaceId}".replaceAll("{format}","json").replaceAll("{" + "securityNamespaceId" + "}", securityNamespaceId.toString()).replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(tokens != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tokens", tokens));
    }
    if(recurse != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "recurse", recurse));
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
  /// Create or update one or more access control lists. All data that currently exists for the ACLs supplied will be overwritten.
  Future set Access Control Lists(String securityNamespaceId, String organization, String apiVersion, VssJsonCollectionWrapper body) async {
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
    String path = "/{organization}/_apis/accesscontrollists/{securityNamespaceId}".replaceAll("{format}","json").replaceAll("{" + "securityNamespaceId" + "}", securityNamespaceId.toString()).replaceAll("{" + "organization" + "}", organization.toString());

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
    } else {
      return;
    }
  }
}
