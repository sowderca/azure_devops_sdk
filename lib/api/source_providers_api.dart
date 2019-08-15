part of azure_devops_sdk.api;



class SourceProvidersApi {
  final ApiClient apiClient;

  SourceProvidersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Gets the contents of a file in the given source code repository.
  Future<String> get File Contents(String organization, String project, String providerName, String apiVersion, { String serviceEndpointId, String repository, String commitOrBranch, String path }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(providerName == null) {
     throw ApiException(400, "Missing required param: providerName");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/sourceProviders/{providerName}/filecontents".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "providerName" + "}", providerName.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(serviceEndpointId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "serviceEndpointId", serviceEndpointId));
    }
    if(repository != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "repository", repository));
    }
    if(commitOrBranch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "commitOrBranch", commitOrBranch));
    }
    if(path != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "path", path));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets the contents of a directory in the given source code repository.
  Future<List<SourceRepositoryItem>> get Path Contents(String organization, String project, String providerName, String apiVersion, { String serviceEndpointId, String repository, String commitOrBranch, String path }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(providerName == null) {
     throw ApiException(400, "Missing required param: providerName");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/sourceProviders/{providerName}/pathcontents".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "providerName" + "}", providerName.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(serviceEndpointId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "serviceEndpointId", serviceEndpointId));
    }
    if(repository != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "repository", repository));
    }
    if(commitOrBranch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "commitOrBranch", commitOrBranch));
    }
    if(path != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "path", path));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<SourceRepositoryItem>') as List).map((item) => item as SourceRepositoryItem).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets a pull request object from source provider.
  Future<PullRequest> get Pull Request(String organization, String project, String providerName, String pullRequestId, String apiVersion, { String repositoryId, String serviceEndpointId }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(providerName == null) {
     throw ApiException(400, "Missing required param: providerName");
    }
    if(pullRequestId == null) {
     throw ApiException(400, "Missing required param: pullRequestId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/sourceProviders/{providerName}/pullrequests/{pullRequestId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "providerName" + "}", providerName.toString()).replaceAll("{" + "pullRequestId" + "}", pullRequestId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(repositoryId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "repositoryId", repositoryId));
    }
    if(serviceEndpointId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "serviceEndpointId", serviceEndpointId));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PullRequest') as PullRequest;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a list of source providers and their capabilities.
  Future<List<SourceProviderAttributes>> list(String organization, String project, String apiVersion) async {
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
    String path = "/{organization}/{project}/_apis/sourceproviders".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<SourceProviderAttributes>') as List).map((item) => item as SourceProviderAttributes).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets a list of branches for the given source code repository.
  Future<List<String>> list Branches(String organization, String project, String providerName, String apiVersion, { String serviceEndpointId, String repository, String branchName }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(providerName == null) {
     throw ApiException(400, "Missing required param: providerName");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/sourceProviders/{providerName}/branches".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "providerName" + "}", providerName.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(serviceEndpointId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "serviceEndpointId", serviceEndpointId));
    }
    if(repository != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "repository", repository));
    }
    if(branchName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "branchName", branchName));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<String>') as List).map((item) => item as String).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets a list of source code repositories.
  Future<SourceRepositories> list Repositories(String organization, String project, String providerName, String apiVersion, { String serviceEndpointId, String repository, String resultSet, bool pageResults, String continuationToken }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(providerName == null) {
     throw ApiException(400, "Missing required param: providerName");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/sourceProviders/{providerName}/repositories".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "providerName" + "}", providerName.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(serviceEndpointId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "serviceEndpointId", serviceEndpointId));
    }
    if(repository != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "repository", repository));
    }
    if(resultSet != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "resultSet", resultSet));
    }
    if(pageResults != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageResults", pageResults));
    }
    if(continuationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continuationToken", continuationToken));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'SourceRepositories') as SourceRepositories;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets a list of webhooks installed in the given source code repository.
  Future<List<RepositoryWebhook>> list Webhooks(String organization, String project, String providerName, String apiVersion, { String serviceEndpointId, String repository }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(providerName == null) {
     throw ApiException(400, "Missing required param: providerName");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/sourceProviders/{providerName}/webhooks".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "providerName" + "}", providerName.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(serviceEndpointId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "serviceEndpointId", serviceEndpointId));
    }
    if(repository != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "repository", repository));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<RepositoryWebhook>') as List).map((item) => item as RepositoryWebhook).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Recreates the webhooks for the specified triggers in the given source code repository.
  Future restore Webhooks(String organization, String project, String providerName, String apiVersion, List<String> body, { String serviceEndpointId, String repository }) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(providerName == null) {
     throw ApiException(400, "Missing required param: providerName");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/sourceProviders/{providerName}/webhooks".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "providerName" + "}", providerName.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(serviceEndpointId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "serviceEndpointId", serviceEndpointId));
    }
    if(repository != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "repository", repository));
    }
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
    } else {
      return;
    }
  }
}
