part of azure_devops_sdk.api;



class ItemsApi {
  final ApiClient apiClient;

  ItemsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Post for retrieving a creating a batch out of a set of items in a repo / project given a list of paths or a long path
  Future<List<List<String>>> get Items Batch(String organization, String repositoryId, String project, String apiVersion, GitItemRequestData body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(repositoryId == null) {
     throw ApiException(400, "Missing required param: repositoryId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryId}/itemsbatch".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryId" + "}", repositoryId.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<List<String>>') as List).map((item) => item as List).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Post for retrieving a set of items given a list of paths or a long path. Allows for specifying the recursionLevel and version descriptors for each path.
  Future<List<List<String>>> get Items Batch_1(String organization, String project, String apiVersion, TfvcItemRequestData body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/tfvc/itembatch".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<List<String>>') as List).map((item) => item as List).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get Item Metadata and/or Content for a collection of items. The download parameter is to indicate whether the content should be available as a download or just sent as a stream in the response. Doesn&#39;t apply to zipped content which is always returned as a download.
  Future<List<GitItem>> list(String organization, String repositoryId, String project, String apiVersion, { String scopePath, String recursionLevel, bool includeContentMetadata, bool latestProcessedChange, bool download, bool includeLinks, String $format, String versionDescriptorVersionOptions, String versionDescriptorVersion, String versionDescriptorVersionType }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(repositoryId == null) {
     throw ApiException(400, "Missing required param: repositoryId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryId}/items".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryId" + "}", repositoryId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(scopePath != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "scopePath", scopePath));
    }
    if(recursionLevel != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "recursionLevel", recursionLevel));
    }
    if(includeContentMetadata != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeContentMetadata", includeContentMetadata));
    }
    if(latestProcessedChange != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "latestProcessedChange", latestProcessedChange));
    }
    if(download != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "download", download));
    }
    if(includeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeLinks", includeLinks));
    }
    if($format != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$format", $format));
    }
    if(versionDescriptorVersionOptions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "versionDescriptor.versionOptions", versionDescriptorVersionOptions));
    }
    if(versionDescriptorVersion != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "versionDescriptor.version", versionDescriptorVersion));
    }
    if(versionDescriptorVersionType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "versionDescriptor.versionType", versionDescriptorVersionType));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<GitItem>') as List).map((item) => item as GitItem).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a list of Tfvc items
  Future<List<TfvcItem>> list_2(String organization, String project, String apiVersion, { String scopePath, String recursionLevel, bool includeLinks, String versionDescriptorVersion, String versionDescriptorVersionType, String versionDescriptorVersionOption }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/tfvc/items".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(scopePath != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "scopePath", scopePath));
    }
    if(recursionLevel != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "recursionLevel", recursionLevel));
    }
    if(includeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeLinks", includeLinks));
    }
    if(versionDescriptorVersion != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "versionDescriptor.version", versionDescriptorVersion));
    }
    if(versionDescriptorVersionType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "versionDescriptor.versionType", versionDescriptorVersionType));
    }
    if(versionDescriptorVersionOption != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "versionDescriptor.versionOption", versionDescriptorVersionOption));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TfvcItem>') as List).map((item) => item as TfvcItem).toList();
    } else {
      return null;
    }
  }
}
