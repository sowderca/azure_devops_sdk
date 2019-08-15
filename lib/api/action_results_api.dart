part of azure_devops_sdk.api;



class ActionResultsApi {
  final ApiClient apiClient;

  ActionResultsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Gets the action results for an iteration in a test result.
  Future<List<TestActionResultModel>> list(String organization, String project, int runId, int testCaseResultId, int iterationId, String actionPath, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(runId == null) {
     throw ApiException(400, "Missing required param: runId");
    }
    if(testCaseResultId == null) {
     throw ApiException(400, "Missing required param: testCaseResultId");
    }
    if(iterationId == null) {
     throw ApiException(400, "Missing required param: iterationId");
    }
    if(actionPath == null) {
     throw ApiException(400, "Missing required param: actionPath");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/test/Runs/{runId}/Results/{testCaseResultId}/Iterations/{iterationId}/actionresults/{actionPath}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "runId" + "}", runId.toString()).replaceAll("{" + "testCaseResultId" + "}", testCaseResultId.toString()).replaceAll("{" + "iterationId" + "}", iterationId.toString()).replaceAll("{" + "actionPath" + "}", actionPath.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TestActionResultModel>') as List).map((item) => item as TestActionResultModel).toList();
    } else {
      return null;
    }
  }
}
