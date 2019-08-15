part of azure_devops_sdk.api;



class TestPointApi {
  final ApiClient apiClient;

  TestPointApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get a list of points based on point Ids provided.
  Future<List<TestPoint>> get Points(String organization, String project, int planId, int suiteId, String pointIds, String apiVersion, { bool returnIdentityRef }) async {
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
    String path = "/{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestPoint/{pointIds}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "planId" + "}", planId.toString()).replaceAll("{" + "suiteId" + "}", suiteId.toString()).replaceAll("{" + "pointIds" + "}", pointIds.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(returnIdentityRef != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "returnIdentityRef", returnIdentityRef));
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
  /// Get all the points inside a suite based on some filters
  Future<List<TestPoint>> get Points List(String organization, String project, int planId, int suiteId, String apiVersion, { String testPointIds, String testCaseId, String continuationToken, bool returnIdentityRef, bool includePointDetails }) async {
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
    String path = "/{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestPoint".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "planId" + "}", planId.toString()).replaceAll("{" + "suiteId" + "}", suiteId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(testPointIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "testPointIds", testPointIds));
    }
    if(testCaseId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "testCaseId", testCaseId));
    }
    if(continuationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continuationToken", continuationToken));
    }
    if(returnIdentityRef != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "returnIdentityRef", returnIdentityRef));
    }
    if(includePointDetails != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includePointDetails", includePointDetails));
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
  /// Update Test Points. This is used to Reset test point to active, update the outcome of a test point or update the tester of a test point
  Future<List<TestPoint>> update(String organization, String project, int planId, int suiteId, String apiVersion, List<TestPointUpdateParams> body) async {
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
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestPoint".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "planId" + "}", planId.toString()).replaceAll("{" + "suiteId" + "}", suiteId.toString());

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
