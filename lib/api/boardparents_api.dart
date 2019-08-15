part of azure_devops_sdk.api;



class BoardparentsApi {
  final ApiClient apiClient;

  BoardparentsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Returns the list of parent field filter model for the given list of workitem ids
  Future<List<ParentChildWIMap>> list(String organization, String project, String childBacklogContextCategoryRefName, String workitemIds, String team, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(childBacklogContextCategoryRefName == null) {
     throw ApiException(400, "Missing required param: childBacklogContextCategoryRefName");
    }
    if(workitemIds == null) {
     throw ApiException(400, "Missing required param: workitemIds");
    }
    if(team == null) {
     throw ApiException(400, "Missing required param: team");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/{team}/_apis/work/boards/boardparents".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "team" + "}", team.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "childBacklogContextCategoryRefName", childBacklogContextCategoryRefName));
      queryParams.addAll(_convertParametersForCollectionFormat("", "workitemIds", workitemIds));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<ParentChildWIMap>') as List).map((item) => item as ParentChildWIMap).toList();
    } else {
      return null;
    }
  }
}
