part of azure_devops_sdk.api;



class TimelineApi {
  final ApiClient apiClient;

  TimelineApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Gets details for a build
  Future<Timeline> callGet(String organization, String project, int buildId, String timelineId, String apiVersion, { int changeId, String planId }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(buildId == null) {
     throw ApiException(400, "Missing required param: buildId");
    }
    if(timelineId == null) {
     throw ApiException(400, "Missing required param: timelineId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/build/builds/{buildId}/timeline/{timelineId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "buildId" + "}", buildId.toString()).replaceAll("{" + "timelineId" + "}", timelineId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(changeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "changeId", changeId));
    }
    if(planId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "planId", planId));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Timeline') as Timeline;
    } else {
      return null;
    }
  }
}
