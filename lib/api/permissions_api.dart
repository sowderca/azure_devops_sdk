part of azure_devops_sdk.api;



class PermissionsApi {
  final ApiClient apiClient;

  PermissionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Evaluates whether the caller has the specified permissions on the specified set of security tokens.
  Future<List<bool>> has Permissions(String securityNamespaceId, String organization, int permissions, String apiVersion, { String tokens, bool alwaysAllowAdministrators, String delimiter }) async {
    Object postBody;

    // verify required params are set
    if(securityNamespaceId == null) {
     throw ApiException(400, "Missing required param: securityNamespaceId");
    }
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(permissions == null) {
     throw ApiException(400, "Missing required param: permissions");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/permissions/{securityNamespaceId}/{permissions}".replaceAll("{format}","json").replaceAll("{" + "securityNamespaceId" + "}", securityNamespaceId.toString()).replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "permissions" + "}", permissions.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(tokens != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tokens", tokens));
    }
    if(alwaysAllowAdministrators != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "alwaysAllowAdministrators", alwaysAllowAdministrators));
    }
    if(delimiter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "delimiter", delimiter));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<bool>') as List).map((item) => item as bool).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Evaluates multiple permissions for the calling user.  Note: This method does not aggregate the results, nor does it short-circuit if one of the permissions evaluates to false.
  Future<PermissionEvaluationBatch> has Permissions Batch(String organization, String apiVersion, PermissionEvaluationBatch body) async {
    Object postBody = body;

    // verify required params are set
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
    String path = "/{organization}/_apis/security/permissionevaluationbatch".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = ["application/json"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PermissionEvaluationBatch') as PermissionEvaluationBatch;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Removes the specified permissions on a security token for a user or group.
  Future<AccessControlEntry> remove Permission(String securityNamespaceId, String descriptor, String organization, int permissions, String apiVersion, { String token }) async {
    Object postBody;

    // verify required params are set
    if(securityNamespaceId == null) {
     throw ApiException(400, "Missing required param: securityNamespaceId");
    }
    if(descriptor == null) {
     throw ApiException(400, "Missing required param: descriptor");
    }
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(permissions == null) {
     throw ApiException(400, "Missing required param: permissions");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/permissions/{securityNamespaceId}/{permissions}".replaceAll("{format}","json").replaceAll("{" + "securityNamespaceId" + "}", securityNamespaceId.toString()).replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "permissions" + "}", permissions.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "descriptor", descriptor));
    if(token != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "token", token));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'AccessControlEntry') as AccessControlEntry;
    } else {
      return null;
    }
  }
}
