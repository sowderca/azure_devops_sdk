part of azure_devops_sdk.api;



class TreesApi {
  final ApiClient apiClient;

  TreesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// The Tree endpoint returns the collection of objects underneath the specified tree. Trees are folders in a Git repository.  Repositories have both a name and an identifier. Identifiers are globally unique, but several projects may contain a repository of the same name. You don&#39;t need to include the project if you specify a repository by ID. However, if you specify a repository by name, you must also specify the project (by name or ID.
  Future<GitTreeRef> callGet(String organization, String repositoryId, String sha1, String project, String apiVersion, { String projectId, bool recursive, String fileName, String $format }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(repositoryId == null) {
     throw ApiException(400, "Missing required param: repositoryId");
    }
    if(sha1 == null) {
     throw ApiException(400, "Missing required param: sha1");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryId}/trees/{sha1}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryId" + "}", repositoryId.toString()).replaceAll("{" + "sha1" + "}", sha1.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(projectId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "projectId", projectId));
    }
    if(recursive != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "recursive", recursive));
    }
    if(fileName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "fileName", fileName));
    }
    if($format != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$format", $format));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GitTreeRef') as GitTreeRef;
    } else {
      return null;
    }
  }
}
