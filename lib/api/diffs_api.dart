part of azure_devops_sdk.api;



class DiffsApi {
  final ApiClient apiClient;

  DiffsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Find the closest common commit (the merge base) between base and target commits, and get the diff between either the base and target commits or common and target commits.
  Future<GitCommitDiffs> callGet(String organization, String repositoryId, String project, String apiVersion, { bool diffCommonCommit, int $top, int $skip, String baseVersionOptions, String baseVersion, String baseVersionType, String targetVersionOptions, String targetVersion, String targetVersionType }) async {
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
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryId}/diffs/commits".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryId" + "}", repositoryId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(diffCommonCommit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "diffCommonCommit", diffCommonCommit));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
    }
    if($skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$skip", $skip));
    }
    if(baseVersionOptions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "baseVersionOptions", baseVersionOptions));
    }
    if(baseVersion != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "baseVersion", baseVersion));
    }
    if(baseVersionType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "baseVersionType", baseVersionType));
    }
    if(targetVersionOptions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "targetVersionOptions", targetVersionOptions));
    }
    if(targetVersion != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "targetVersion", targetVersion));
    }
    if(targetVersionType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "targetVersionType", targetVersionType));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GitCommitDiffs') as GitCommitDiffs;
    } else {
      return null;
    }
  }
}
