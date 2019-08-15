part of azure_devops_sdk.api;



class PythonApi {
  final ApiClient apiClient;

  PythonApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Delete a package version, moving it to the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<Package> delete Package Version(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feedId == null) {
     throw ApiException(400, "Missing required param: feedId");
    }
    if(packageName == null) {
     throw ApiException(400, "Missing required param: packageName");
    }
    if(packageVersion == null) {
     throw ApiException(400, "Missing required param: packageVersion");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/packaging/feeds/{feedId}/pypi/packages/{packageName}/versions/{packageVersion}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageName" + "}", packageName.toString()).replaceAll("{" + "packageVersion" + "}", packageVersion.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Package') as Package;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Delete a package version from the feed, moving it to the recycle bin.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future delete Package Version From Recycle Bin(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feedId == null) {
     throw ApiException(400, "Missing required param: feedId");
    }
    if(packageName == null) {
     throw ApiException(400, "Missing required param: packageName");
    }
    if(packageVersion == null) {
     throw ApiException(400, "Missing required param: packageVersion");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/packaging/feeds/{feedId}/pypi/RecycleBin/packages/{packageName}/versions/{packageVersion}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageName" + "}", packageName.toString()).replaceAll("{" + "packageVersion" + "}", packageVersion.toString()).replaceAll("{" + "project" + "}", project.toString());

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
  /// Download a python package file directly. This API is intended for manual UI download options, not for programmatic access and scripting.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<String> download Package(String organization, String feedId, String packageName, String packageVersion, String fileName, String project, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feedId == null) {
     throw ApiException(400, "Missing required param: feedId");
    }
    if(packageName == null) {
     throw ApiException(400, "Missing required param: packageName");
    }
    if(packageVersion == null) {
     throw ApiException(400, "Missing required param: packageVersion");
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
    String path = "/{organization}/{project}/_apis/packaging/feeds/{feedId}/pypi/packages/{packageName}/versions/{packageVersion}/{fileName}/content".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageName" + "}", packageName.toString()).replaceAll("{" + "packageVersion" + "}", packageVersion.toString()).replaceAll("{" + "fileName" + "}", fileName.toString()).replaceAll("{" + "project" + "}", project.toString());

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
  Future<Package> get Package Version(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion, { bool showDeleted }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feedId == null) {
     throw ApiException(400, "Missing required param: feedId");
    }
    if(packageName == null) {
     throw ApiException(400, "Missing required param: packageName");
    }
    if(packageVersion == null) {
     throw ApiException(400, "Missing required param: packageVersion");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/packaging/feeds/{feedId}/pypi/packages/{packageName}/versions/{packageVersion}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageName" + "}", packageName.toString()).replaceAll("{" + "packageVersion" + "}", packageVersion.toString()).replaceAll("{" + "project" + "}", project.toString());

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
  Future<PyPiPackageVersionDeletionState> getPackageVersionFromRecycleBin(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feedId == null) {
     throw ApiException(400, "Missing required param: feedId");
    }
    if(packageName == null) {
     throw ApiException(400, "Missing required param: packageName");
    }
    if(packageVersion == null) {
     throw ApiException(400, "Missing required param: packageVersion");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/packaging/feeds/{feedId}/pypi/RecycleBin/packages/{packageName}/versions/{packageVersion}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageName" + "}", packageName.toString()).replaceAll("{" + "packageVersion" + "}", packageVersion.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PyPiPackageVersionDeletionState') as PyPiPackageVersionDeletionState;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Restore a package version from the recycle bin to its associated feed.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future restore Package Version From Recycle Bin(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion, PyPiRecycleBinPackageVersionDetails body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feedId == null) {
     throw ApiException(400, "Missing required param: feedId");
    }
    if(packageName == null) {
     throw ApiException(400, "Missing required param: packageName");
    }
    if(packageVersion == null) {
     throw ApiException(400, "Missing required param: packageVersion");
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
    String path = "/{organization}/{project}/_apis/packaging/feeds/{feedId}/pypi/RecycleBin/packages/{packageName}/versions/{packageVersion}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageName" + "}", packageName.toString()).replaceAll("{" + "packageVersion" + "}", packageVersion.toString()).replaceAll("{" + "project" + "}", project.toString());

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
  /// 
  ///
  /// Update state for a package version.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future update Package Version(String organization, String feedId, String packageName, String packageVersion, String project, String apiVersion, PackageVersionDetails body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(feedId == null) {
     throw ApiException(400, "Missing required param: feedId");
    }
    if(packageName == null) {
     throw ApiException(400, "Missing required param: packageName");
    }
    if(packageVersion == null) {
     throw ApiException(400, "Missing required param: packageVersion");
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
    String path = "/{organization}/{project}/_apis/packaging/feeds/{feedId}/pypi/packages/{packageName}/versions/{packageVersion}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "packageName" + "}", packageName.toString()).replaceAll("{" + "packageVersion" + "}", packageVersion.toString()).replaceAll("{" + "project" + "}", project.toString());

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
