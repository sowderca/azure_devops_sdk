part of azure_devops_sdk.api;



class RecycleBinApi {
  final ApiClient apiClient;

  RecycleBinApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get information about a package and all its versions within the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<Package> get Recycle Bin Package(String organization, String feedId, String packageId, String project, String apiVersion, { bool includeUrls }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feedId == null) {
     throw ApiException(400, "Missing required param: feedId");
    }
    if(packageId == null) {
     throw ApiException(400, "Missing required param: packageId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/packaging/Feeds/{feedId}/RecycleBin/Packages/{packageId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageId" + "}", packageId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeUrls != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeUrls", includeUrls));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Package') as Package;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get information about a package version within the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<RecycleBinPackageVersion> get Recycle Bin Package Version(String organization, String feedId, String packageId, String packageVersionId, String project, String apiVersion, { bool includeUrls }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feedId == null) {
     throw ApiException(400, "Missing required param: feedId");
    }
    if(packageId == null) {
     throw ApiException(400, "Missing required param: packageId");
    }
    if(packageVersionId == null) {
     throw ApiException(400, "Missing required param: packageVersionId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/packaging/Feeds/{feedId}/RecycleBin/Packages/{packageId}/Versions/{packageVersionId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageId" + "}", packageId.toString()).replaceAll("{" + "packageVersionId" + "}", packageVersionId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeUrls != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeUrls", includeUrls));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'RecycleBinPackageVersion') as RecycleBinPackageVersion;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a list of package versions within the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<List<RecycleBinPackageVersion>> get Recycle Bin Package Versions(String organization, String feedId, String packageId, String project, String apiVersion, { bool includeUrls }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feedId == null) {
     throw ApiException(400, "Missing required param: feedId");
    }
    if(packageId == null) {
     throw ApiException(400, "Missing required param: packageId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/packaging/Feeds/{feedId}/RecycleBin/Packages/{packageId}/Versions".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageId" + "}", packageId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeUrls != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeUrls", includeUrls));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<RecycleBinPackageVersion>') as List).map((item) => item as RecycleBinPackageVersion).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Query for packages within the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<List<Package>> get Recycle Bin Packages(String organization, String feedId, String project, String apiVersion, { String protocolType, String packageNameQuery, bool includeUrls, int $top, int $skip, bool includeAllVersions }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feedId == null) {
     throw ApiException(400, "Missing required param: feedId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/packaging/Feeds/{feedId}/RecycleBin/Packages".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(protocolType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "protocolType", protocolType));
    }
    if(packageNameQuery != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "packageNameQuery", packageNameQuery));
    }
    if(includeUrls != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeUrls", includeUrls));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
    }
    if($skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$skip", $skip));
    }
    if(includeAllVersions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeAllVersions", includeAllVersions));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Package>') as List).map((item) => item as Package).toList();
    } else {
      return null;
    }
  }
}
