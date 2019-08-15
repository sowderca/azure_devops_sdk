part of azure_devops_sdk.api;



class MavenApi {
  final ApiClient apiClient;

  MavenApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Delete a package version from the feed and move it to the feed&#39;s recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future deletePackageVersion(String organization, String feed, String groupId, String artifactId, String version, String project, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feed == null) {
     throw ApiException(400, "Missing required param: feed");
    }
    if(groupId == null) {
     throw ApiException(400, "Missing required param: groupId");
    }
    if(artifactId == null) {
     throw ApiException(400, "Missing required param: artifactId");
    }
    if(version == null) {
     throw ApiException(400, "Missing required param: version");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/packaging/feeds/{feed}/maven/groups/{groupId}/artifacts/{artifactId}/versions/{version}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feed" + "}", feed.toString()).replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "artifactId" + "}", artifactId.toString()).replaceAll("{" + "version" + "}", version.toString()).replaceAll("{" + "project" + "}", project.toString());

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
  /// Permanently delete a package from a feed&#39;s recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future deletePackageVersionFromRecycleBin(String organization, String feed, String groupId, String artifactId, String version, String project, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feed == null) {
     throw ApiException(400, "Missing required param: feed");
    }
    if(groupId == null) {
     throw ApiException(400, "Missing required param: groupId");
    }
    if(artifactId == null) {
     throw ApiException(400, "Missing required param: artifactId");
    }
    if(version == null) {
     throw ApiException(400, "Missing required param: version");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/packaging/feeds/{feed}/maven/RecycleBin/groups/{groupId}/artifacts/{artifactId}/versions/{version}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feed" + "}", feed.toString()).replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "artifactId" + "}", artifactId.toString()).replaceAll("{" + "version" + "}", version.toString()).replaceAll("{" + "project" + "}", project.toString());

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
  /// Fulfills Maven package file download requests by either returning the URL of the requested package file or, in the case of Azure DevOps Server (OnPrem), returning the content as a stream.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<String> downloadPackage(String organization, String feedId, String groupId, String artifactId, String version, String fileName, String project, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feedId == null) {
     throw ApiException(400, "Missing required param: feedId");
    }
    if(groupId == null) {
     throw ApiException(400, "Missing required param: groupId");
    }
    if(artifactId == null) {
     throw ApiException(400, "Missing required param: artifactId");
    }
    if(version == null) {
     throw ApiException(400, "Missing required param: version");
    }
    if(fileName == null) {
     throw ApiException(400, "Missing required param: fileName");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/packaging/feeds/{feedId}/maven/{groupId}/{artifactId}/{version}/{fileName}/content".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "artifactId" + "}", artifactId.toString()).replaceAll("{" + "version" + "}", version.toString()).replaceAll("{" + "fileName" + "}", fileName.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get information about a package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<Package> get Package Version(String organization, String feed, String groupId, String artifactId, String version, String project, String apiVersion, { bool showDeleted }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feed == null) {
     throw ApiException(400, "Missing required param: feed");
    }
    if(groupId == null) {
     throw ApiException(400, "Missing required param: groupId");
    }
    if(artifactId == null) {
     throw ApiException(400, "Missing required param: artifactId");
    }
    if(version == null) {
     throw ApiException(400, "Missing required param: version");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/packaging/feeds/{feed}/maven/groups/{groupId}/artifacts/{artifactId}/versions/{version}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feed" + "}", feed.toString()).replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "artifactId" + "}", artifactId.toString()).replaceAll("{" + "version" + "}", version.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(showDeleted != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showDeleted", showDeleted));
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
  /// Get information about a package version in the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<MavenPackageVersionDeletionState> getPackageVersionFromRecycleBin(String organization, String feed, String groupId, String artifactId, String version, String project, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feed == null) {
     throw ApiException(400, "Missing required param: feed");
    }
    if(groupId == null) {
     throw ApiException(400, "Missing required param: groupId");
    }
    if(artifactId == null) {
     throw ApiException(400, "Missing required param: artifactId");
    }
    if(version == null) {
     throw ApiException(400, "Missing required param: version");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/packaging/feeds/{feed}/maven/RecycleBin/groups/{groupId}/artifacts/{artifactId}/versions/{version}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feed" + "}", feed.toString()).replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "artifactId" + "}", artifactId.toString()).replaceAll("{" + "version" + "}", version.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'MavenPackageVersionDeletionState') as MavenPackageVersionDeletionState;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Restore a package version from the recycle bin to its associated feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future restore Package Version From Recycle Bin(String organization, String feed, String groupId, String artifactId, String version, String project, String apiVersion, MavenRecycleBinPackageVersionDetails body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feed == null) {
     throw ApiException(400, "Missing required param: feed");
    }
    if(groupId == null) {
     throw ApiException(400, "Missing required param: groupId");
    }
    if(artifactId == null) {
     throw ApiException(400, "Missing required param: artifactId");
    }
    if(version == null) {
     throw ApiException(400, "Missing required param: version");
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
    String path = "/{organization}/{project}/_apis/packaging/feeds/{feed}/maven/RecycleBin/groups/{groupId}/artifacts/{artifactId}/versions/{version}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feed" + "}", feed.toString()).replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "artifactId" + "}", artifactId.toString()).replaceAll("{" + "version" + "}", version.toString()).replaceAll("{" + "project" + "}", project.toString());

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
    } else {
      return;
    }
  }
}
