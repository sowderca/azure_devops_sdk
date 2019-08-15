part of azure_devops_sdk.api;



class MergeBasesApi {
  final ApiClient apiClient;

  MergeBasesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Find the merge bases of two commits, optionally across forks. If otherRepositoryId is not specified, the merge bases will only be calculated within the context of the local repositoryNameOrId.
  Future<List<GitCommitRef>> list(String organization, String repositoryNameOrId, String commitId, String otherCommitId, String project, String apiVersion, { String otherCollectionId, String otherRepositoryId }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(repositoryNameOrId == null) {
     throw ApiException(400, "Missing required param: repositoryNameOrId");
    }
    if(commitId == null) {
     throw ApiException(400, "Missing required param: commitId");
    }
    if(otherCommitId == null) {
     throw ApiException(400, "Missing required param: otherCommitId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryNameOrId}/commits/{commitId}/mergebases".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryNameOrId" + "}", repositoryNameOrId.toString()).replaceAll("{" + "commitId" + "}", commitId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "otherCommitId", otherCommitId));
    if(otherCollectionId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "otherCollectionId", otherCollectionId));
    }
    if(otherRepositoryId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "otherRepositoryId", otherRepositoryId));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<GitCommitRef>') as List).map((item) => item as GitCommitRef).toList();
    } else {
      return null;
    }
  }
}
