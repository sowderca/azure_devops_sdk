part of azure_devops_sdk.api;



class ArtifactDetailsApi {
  final ApiClient apiClient;

  ArtifactDetailsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Generate a SVG badge for the latest version of a package.  The generated SVG is typically used as the image in an HTML link which takes users to the feed containing the package to accelerate discovery and consumption.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<String> get Badge(String organization, String feedId, String packageId, String project, String apiVersion) async {
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
    String path = "/{organization}/{project}/_apis/public/packaging/Feeds/{feedId}/Packages/{packageId}/badge".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageId" + "}", packageId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get details about a specific package.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<Package> get Package(String organization, String feedId, String packageId, String project, String apiVersion, { bool includeAllVersions, bool includeUrls, bool isListed, bool isRelease, bool includeDeleted, bool includeDescription }) async {
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
    String path = "/{organization}/{project}/_apis/packaging/Feeds/{feedId}/packages/{packageId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageId" + "}", packageId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeAllVersions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeAllVersions", includeAllVersions));
    }
    if(includeUrls != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeUrls", includeUrls));
    }
    if(isListed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isListed", isListed));
    }
    if(isRelease != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isRelease", isRelease));
    }
    if(includeDeleted != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeDeleted", includeDeleted));
    }
    if(includeDescription != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeDescription", includeDescription));
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
  /// Get details about a specific package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<PackageVersion> get Package Version(String organization, String feedId, String packageId, String packageVersionId, String project, String apiVersion, { bool includeUrls, bool isListed, bool isDeleted }) async {
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
    String path = "/{organization}/{project}/_apis/packaging/Feeds/{feedId}/Packages/{packageId}/versions/{packageVersionId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageId" + "}", packageId.toString()).replaceAll("{" + "packageVersionId" + "}", packageVersionId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeUrls != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeUrls", includeUrls));
    }
    if(isListed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isListed", isListed));
    }
    if(isDeleted != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isDeleted", isDeleted));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PackageVersion') as PackageVersion;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a list of package versions, optionally filtering by state.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<List<PackageVersion>> get Package Versions(String organization, String feedId, String packageId, String project, String apiVersion, { bool includeUrls, bool isListed, bool isDeleted }) async {
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
    String path = "/{organization}/{project}/_apis/packaging/Feeds/{feedId}/Packages/{packageId}/versions".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageId" + "}", packageId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeUrls != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeUrls", includeUrls));
    }
    if(isListed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isListed", isListed));
    }
    if(isDeleted != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isDeleted", isDeleted));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<PackageVersion>') as List).map((item) => item as PackageVersion).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get details about all of the packages in the feed. Use the various filters to include or exclude information from the result set.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<List<Package>> get Packages(String organization, String feedId, String project, String apiVersion, { String protocolType, String packageNameQuery, String normalizedPackageName, bool includeUrls, bool includeAllVersions, bool isListed, bool getTopPackageVersions, bool isRelease, bool includeDescription, int $top, int $skip, bool includeDeleted, bool isCached, String directUpstreamId }) async {
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
    String path = "/{organization}/{project}/_apis/packaging/Feeds/{feedId}/packages".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "project" + "}", project.toString());

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
    if(normalizedPackageName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "normalizedPackageName", normalizedPackageName));
    }
    if(includeUrls != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeUrls", includeUrls));
    }
    if(includeAllVersions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeAllVersions", includeAllVersions));
    }
    if(isListed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isListed", isListed));
    }
    if(getTopPackageVersions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "getTopPackageVersions", getTopPackageVersions));
    }
    if(isRelease != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isRelease", isRelease));
    }
    if(includeDescription != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeDescription", includeDescription));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
    }
    if($skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$skip", $skip));
    }
    if(includeDeleted != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeDeleted", includeDeleted));
    }
    if(isCached != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isCached", isCached));
    }
    if(directUpstreamId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "directUpstreamId", directUpstreamId));
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
  /// 
  ///
  /// Gets provenance for a package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<PackageVersionProvenance> getPackageVersionProvenance(String organization, String feedId, String packageId, String packageVersionId, String project, String apiVersion) async {
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
    String path = "/{organization}/{project}/_apis/packaging/Feeds/{feedId}/Packages/{packageId}/Versions/{packageVersionId}/provenance".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageId" + "}", packageId.toString()).replaceAll("{" + "packageVersionId" + "}", packageVersionId.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PackageVersionProvenance') as PackageVersionProvenance;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// 
  Future<List<PackageMetrics>> query Package Metrics(String organization, String feedId, String project, String apiVersion, PackageMetricsQuery body) async {
    Object postBody = body;

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
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/packaging/Feeds/{feedId}/packagemetricsbatch".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<PackageMetrics>') as List).map((item) => item as PackageMetrics).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// 
  Future<List<PackageVersionMetrics>> query Package Version Metrics(String organization, String feedId, String packageId, String project, String apiVersion, PackageVersionMetricsQuery body) async {
    Object postBody = body;

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
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/packaging/Feeds/{feedId}/Packages/{packageId}/versionmetricsbatch".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageId" + "}", packageId.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<PackageVersionMetrics>') as List).map((item) => item as PackageVersionMetrics).toList();
    } else {
      return null;
    }
  }
}
