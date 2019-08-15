part of azure_devops_sdk.api;



class ChangeTrackingApi {
  final ApiClient apiClient;

  ChangeTrackingApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Query a feed to determine its current state.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<FeedChange> get Feed Change(String organization, String feedId, String project, String apiVersion) async {
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
    String path = "/{organization}/{project}/_apis/packaging/feedchanges/{feedId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'FeedChange') as FeedChange;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Query to determine which feeds have changed since the last call, tracked through the provided continuationToken. Only changes to a feed itself are returned and impact the continuationToken, not additions or alterations to packages within the feeds.  If the project parameter is present, gets all feed changes in the given project. If omitted, gets all feed changes in the organization.
  Future<FeedChangesResponse> get Feed Changes(String organization, String project, String apiVersion, { bool includeDeleted, int continuationToken, int batchSize }) async {
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
    String path = "/{organization}/{project}/_apis/packaging/feedchanges".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeDeleted != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeDeleted", includeDeleted));
    }
    if(continuationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continuationToken", continuationToken));
    }
    if(batchSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "batchSize", batchSize));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'FeedChangesResponse') as FeedChangesResponse;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a batch of package changes made to a feed.  The changes returned are &#39;most recent change&#39; so if an Add is followed by an Update before you begin enumerating, you&#39;ll only see one change in the batch.  While consuming batches using the continuation token, you may see changes to the same package version multiple times if they are happening as you enumerate.  The project parameter must be supplied if the feed was created in a project. If the feed is not associated with any project, omit the project parameter from the request.
  Future<PackageChangesResponse> get Package Changes(String organization, String feedId, String project, String apiVersion, { int continuationToken, int batchSize }) async {
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
    String path = "/{organization}/{project}/_apis/packaging/Feeds/{feedId}/packagechanges".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "feedId" + "}", feedId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(continuationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continuationToken", continuationToken));
    }
    if(batchSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "batchSize", batchSize));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PackageChangesResponse') as PackageChangesResponse;
    } else {
      return null;
    }
  }
}
