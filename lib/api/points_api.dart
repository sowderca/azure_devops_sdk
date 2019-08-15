part of azure_devops_sdk.api;



class PointsApi {
  final ApiClient apiClient;

  PointsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get a test point.
  Future<TestPoint> get Point(String organization, String project, int planId, int suiteId, int pointIds, String apiVersion, { String witFields }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(planId == null) {
     throw ApiException(400, "Missing required param: planId");
    }
    if(suiteId == null) {
     throw ApiException(400, "Missing required param: suiteId");
    }
    if(pointIds == null) {
     throw ApiException(400, "Missing required param: pointIds");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/test/Plans/{planId}/Suites/{suiteId}/points/{pointIds}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "planId" + "}", planId.toString()).replaceAll("{" + "suiteId" + "}", suiteId.toString()).replaceAll("{" + "pointIds" + "}", pointIds.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(witFields != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "witFields", witFields));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'TestPoint') as TestPoint;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get test points using query.
  Future<TestPointsQuery> get Points By Query(String organization, String project, String apiVersion, TestPointsQuery body, { int $skip, int $top }) async {
    Object postBody = body;

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
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/test/points".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if($skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$skip", $skip));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'TestPointsQuery') as TestPointsQuery;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a list of test points.
  Future<List<TestPoint>> list(String organization, String project, int planId, int suiteId, String apiVersion, { String witFields, String configurationId, String testCaseId, String testPointIds, bool includePointDetails, int $skip, int $top }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(planId == null) {
     throw ApiException(400, "Missing required param: planId");
    }
    if(suiteId == null) {
     throw ApiException(400, "Missing required param: suiteId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/test/Plans/{planId}/Suites/{suiteId}/points".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "planId" + "}", planId.toString()).replaceAll("{" + "suiteId" + "}", suiteId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(witFields != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "witFields", witFields));
    }
    if(configurationId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "configurationId", configurationId));
    }
    if(testCaseId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "testCaseId", testCaseId));
    }
    if(testPointIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "testPointIds", testPointIds));
    }
    if(includePointDetails != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includePointDetails", includePointDetails));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TestPoint>') as List).map((item) => item as TestPoint).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Update test points.
  Future<List<TestPoint>> update(String organization, String project, int planId, int suiteId, String pointIds, String apiVersion, PointUpdateModel body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(planId == null) {
     throw ApiException(400, "Missing required param: planId");
    }
    if(suiteId == null) {
     throw ApiException(400, "Missing required param: suiteId");
    }
    if(pointIds == null) {
     throw ApiException(400, "Missing required param: pointIds");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/test/Plans/{planId}/Suites/{suiteId}/points/{pointIds}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "planId" + "}", planId.toString()).replaceAll("{" + "suiteId" + "}", suiteId.toString()).replaceAll("{" + "pointIds" + "}", pointIds.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TestPoint>') as List).map((item) => item as TestPoint).toList();
    } else {
      return null;
    }
  }
}
