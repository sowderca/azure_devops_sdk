part of azure_devops_sdk.api;



class PullRequestsApi {
  final ApiClient apiClient;

  PullRequestsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Create a pull request.
  Future<GitPullRequest> create(String organization, String repositoryId, String project, String apiVersion, GitPullRequest body, { bool supportsIterations }) async {
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
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryId}/pullrequests".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryId" + "}", repositoryId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(supportsIterations != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "supportsIterations", supportsIterations));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GitPullRequest') as GitPullRequest;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve a pull request.
  Future<GitPullRequest> get Pull Request(String organization, String repositoryId, int pullRequestId, String project, String apiVersion, { int maxCommentLength, int $skip, int $top, bool includeCommits, bool includeWorkItemRefs }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(repositoryId == null) {
     throw ApiException(400, "Missing required param: repositoryId");
    }
    if(pullRequestId == null) {
     throw ApiException(400, "Missing required param: pullRequestId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryId}/pullrequests/{pullRequestId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryId" + "}", repositoryId.toString()).replaceAll("{" + "pullRequestId" + "}", pullRequestId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(maxCommentLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCommentLength", maxCommentLength));
    }
    if($skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$skip", $skip));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
    }
    if(includeCommits != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeCommits", includeCommits));
    }
    if(includeWorkItemRefs != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeWorkItemRefs", includeWorkItemRefs));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GitPullRequest') as GitPullRequest;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve a pull request.
  Future<GitPullRequest> get Pull Request By Id(String organization, int pullRequestId, String project, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(pullRequestId == null) {
     throw ApiException(400, "Missing required param: pullRequestId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/git/pullrequests/{pullRequestId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "pullRequestId" + "}", pullRequestId.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GitPullRequest') as GitPullRequest;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve all pull requests matching a specified criteria.
  Future<List<GitPullRequest>> get Pull Requests(String organization, String repositoryId, String project, String apiVersion, { bool searchCriteriaIncludeLinks, String searchCriteriaSourceRefName, String searchCriteriaSourceRepositoryId, String searchCriteriaTargetRefName, String searchCriteriaStatus, String searchCriteriaReviewerId, String searchCriteriaCreatorId, String searchCriteriaRepositoryId, int maxCommentLength, int $skip, int $top }) async {
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
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryId}/pullrequests".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryId" + "}", repositoryId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(searchCriteriaIncludeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.includeLinks", searchCriteriaIncludeLinks));
    }
    if(searchCriteriaSourceRefName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.sourceRefName", searchCriteriaSourceRefName));
    }
    if(searchCriteriaSourceRepositoryId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.sourceRepositoryId", searchCriteriaSourceRepositoryId));
    }
    if(searchCriteriaTargetRefName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.targetRefName", searchCriteriaTargetRefName));
    }
    if(searchCriteriaStatus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.status", searchCriteriaStatus));
    }
    if(searchCriteriaReviewerId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.reviewerId", searchCriteriaReviewerId));
    }
    if(searchCriteriaCreatorId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.creatorId", searchCriteriaCreatorId));
    }
    if(searchCriteriaRepositoryId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.repositoryId", searchCriteriaRepositoryId));
    }
    if(maxCommentLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCommentLength", maxCommentLength));
    }
    if($skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$skip", $skip));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<GitPullRequest>') as List).map((item) => item as GitPullRequest).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve all pull requests matching a specified criteria.
  Future<List<GitPullRequest>> get Pull Requests By Project(String organization, String project, String apiVersion, { bool searchCriteriaIncludeLinks, String searchCriteriaSourceRefName, String searchCriteriaSourceRepositoryId, String searchCriteriaTargetRefName, String searchCriteriaStatus, String searchCriteriaReviewerId, String searchCriteriaCreatorId, String searchCriteriaRepositoryId, int maxCommentLength, int $skip, int $top }) async {
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
    String path = "/{organization}/{project}/_apis/git/pullrequests".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(searchCriteriaIncludeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.includeLinks", searchCriteriaIncludeLinks));
    }
    if(searchCriteriaSourceRefName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.sourceRefName", searchCriteriaSourceRefName));
    }
    if(searchCriteriaSourceRepositoryId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.sourceRepositoryId", searchCriteriaSourceRepositoryId));
    }
    if(searchCriteriaTargetRefName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.targetRefName", searchCriteriaTargetRefName));
    }
    if(searchCriteriaStatus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.status", searchCriteriaStatus));
    }
    if(searchCriteriaReviewerId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.reviewerId", searchCriteriaReviewerId));
    }
    if(searchCriteriaCreatorId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.creatorId", searchCriteriaCreatorId));
    }
    if(searchCriteriaRepositoryId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.repositoryId", searchCriteriaRepositoryId));
    }
    if(maxCommentLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCommentLength", maxCommentLength));
    }
    if($skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$skip", $skip));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<GitPullRequest>') as List).map((item) => item as GitPullRequest).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Update a pull request  These are the properties that can be updated with the API:  - Status  - Title  - Description (up to 4000 characters)  - CompletionOptions  - MergeOptions  - AutoCompleteSetBy.Id  - TargetRefName (when the PR retargeting feature is enabled)  Attempting to update other properties outside of this list will either cause the server to throw an &#x60;InvalidArgumentValueException&#x60;,  or to silently ignore the update.
  Future<GitPullRequest> update(String organization, String repositoryId, int pullRequestId, String project, String apiVersion, GitPullRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(repositoryId == null) {
     throw ApiException(400, "Missing required param: repositoryId");
    }
    if(pullRequestId == null) {
     throw ApiException(400, "Missing required param: pullRequestId");
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
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryId}/pullrequests/{pullRequestId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryId" + "}", repositoryId.toString()).replaceAll("{" + "pullRequestId" + "}", pullRequestId.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GitPullRequest') as GitPullRequest;
    } else {
      return null;
    }
  }
}
