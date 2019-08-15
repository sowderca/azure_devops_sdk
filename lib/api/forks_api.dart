part of azure_devops_sdk.api;



class ForksApi {
  final ApiClient apiClient;

  ForksApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Request that another repository&#39;s refs be fetched into this one. It syncs two existing forks. To create a fork, please see the &lt;a href&#x3D;\&quot;https://docs.microsoft.com/en-us/rest/api/vsts/git/repositories/create?view&#x3D;azure-devops-rest-5.1\&quot;&gt; repositories endpoint&lt;/a&gt;
  Future<GitForkSyncRequest> create fork sync request(String organization, String repositoryNameOrId, String project, String apiVersion, GitForkSyncRequestParameters body, { bool includeLinks }) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(repositoryNameOrId == null) {
     throw ApiException(400, "Missing required param: repositoryNameOrId");
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
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryNameOrId}/forkSyncRequests".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryNameOrId" + "}", repositoryNameOrId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeLinks", includeLinks));
    }
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GitForkSyncRequest') as GitForkSyncRequest;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve all requested fork sync operations on this repository.
  Future<List<GitForkSyncRequest>> get Fork Sync Requests(String organization, String repositoryNameOrId, String project, String apiVersion, { bool includeAbandoned, bool includeLinks }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(repositoryNameOrId == null) {
     throw ApiException(400, "Missing required param: repositoryNameOrId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryNameOrId}/forkSyncRequests".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryNameOrId" + "}", repositoryNameOrId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeAbandoned != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeAbandoned", includeAbandoned));
    }
    if(includeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeLinks", includeLinks));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<GitForkSyncRequest>') as List).map((item) => item as GitForkSyncRequest).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a specific fork sync operation&#39;s details.
  Future<GitForkSyncRequest> get fork sync request(String organization, String repositoryNameOrId, int forkSyncOperationId, String project, String apiVersion, { bool includeLinks }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(repositoryNameOrId == null) {
     throw ApiException(400, "Missing required param: repositoryNameOrId");
    }
    if(forkSyncOperationId == null) {
     throw ApiException(400, "Missing required param: forkSyncOperationId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryNameOrId}/forkSyncRequests/{forkSyncOperationId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryNameOrId" + "}", repositoryNameOrId.toString()).replaceAll("{" + "forkSyncOperationId" + "}", forkSyncOperationId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeLinks", includeLinks));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GitForkSyncRequest') as GitForkSyncRequest;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve all forks of a repository in the collection.
  Future<List<GitRepositoryRef>> list(String organization, String repositoryNameOrId, String collectionId, String project, String apiVersion, { bool includeLinks }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(repositoryNameOrId == null) {
     throw ApiException(400, "Missing required param: repositoryNameOrId");
    }
    if(collectionId == null) {
     throw ApiException(400, "Missing required param: collectionId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryNameOrId}/forks/{collectionId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryNameOrId" + "}", repositoryNameOrId.toString()).replaceAll("{" + "collectionId" + "}", collectionId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeLinks", includeLinks));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<GitRepositoryRef>') as List).map((item) => item as GitRepositoryRef).toList();
    } else {
      return null;
    }
  }
}
