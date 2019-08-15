part of azure_devops_sdk.api;



class InstalledExtensionsApi {
  final ApiClient apiClient;

  InstalledExtensionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get an installed extension by its publisher and extension name.
  Future<InstalledExtension> callGet(String organization, String publisherName, String extensionName, String apiVersion, { String assetTypes }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(publisherName == null) {
     throw ApiException(400, "Missing required param: publisherName");
    }
    if(extensionName == null) {
     throw ApiException(400, "Missing required param: extensionName");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/extensionmanagement/installedextensionsbyname/{publisherName}/{extensionName}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "publisherName" + "}", publisherName.toString()).replaceAll("{" + "extensionName" + "}", extensionName.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(assetTypes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "assetTypes", assetTypes));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InstalledExtension') as InstalledExtension;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Install the specified extension into the account / project collection.
  Future<InstalledExtension> install Extension By Name(String organization, String publisherName, String extensionName, String version, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(publisherName == null) {
     throw ApiException(400, "Missing required param: publisherName");
    }
    if(extensionName == null) {
     throw ApiException(400, "Missing required param: extensionName");
    }
    if(version == null) {
     throw ApiException(400, "Missing required param: version");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/extensionmanagement/installedextensionsbyname/{publisherName}/{extensionName}/{version}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "publisherName" + "}", publisherName.toString()).replaceAll("{" + "extensionName" + "}", extensionName.toString()).replaceAll("{" + "version" + "}", version.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InstalledExtension') as InstalledExtension;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// List the installed extensions in the account / project collection.
  Future<List<InstalledExtension>> list(String organization, String apiVersion, { bool includeDisabledExtensions, bool includeErrors, String assetTypes, bool includeInstallationIssues }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/extensionmanagement/installedextensions".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeDisabledExtensions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeDisabledExtensions", includeDisabledExtensions));
    }
    if(includeErrors != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeErrors", includeErrors));
    }
    if(assetTypes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "assetTypes", assetTypes));
    }
    if(includeInstallationIssues != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeInstallationIssues", includeInstallationIssues));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<InstalledExtension>') as List).map((item) => item as InstalledExtension).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Uninstall the specified extension from the account / project collection.
  Future uninstall Extension By Name(String organization, String publisherName, String extensionName, String apiVersion, { String reason, String reasonCode }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(publisherName == null) {
     throw ApiException(400, "Missing required param: publisherName");
    }
    if(extensionName == null) {
     throw ApiException(400, "Missing required param: extensionName");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/extensionmanagement/installedextensionsbyname/{publisherName}/{extensionName}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "publisherName" + "}", publisherName.toString()).replaceAll("{" + "extensionName" + "}", extensionName.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(reason != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "reason", reason));
    }
    if(reasonCode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "reasonCode", reasonCode));
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
    } else {
      return;
    }
  }
  /// 
  ///
  /// Update an installed extension. Typically this API is used to enable or disable an extension.
  Future<InstalledExtension> update(String organization, String apiVersion, InstalledExtension body) async {
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
    String path = "/{organization}/_apis/extensionmanagement/installedextensions".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString());

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
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InstalledExtension') as InstalledExtension;
    } else {
      return null;
    }
  }
}
