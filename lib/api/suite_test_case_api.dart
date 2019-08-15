part of azure_devops_sdk.api;



class SuiteTestCaseApi {
  final ApiClient apiClient;

  SuiteTestCaseApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Add test cases to a suite with specified configurations
  Future<List<TestCase>> add(String organization, String project, int planId, int suiteId, String apiVersion, List<SuiteTestCaseCreateUpdateParameters> body) async {
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
    String path = "/{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestCase".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "planId" + "}", planId.toString()).replaceAll("{" + "suiteId" + "}", suiteId.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TestCase>') as List).map((item) => item as TestCase).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get Test Cases For a Suite.
  Future<List<TestCase>> get Test Case(String organization, String project, int planId, int suiteId, String testCaseIds, String apiVersion, { String witFields, bool returnIdentityRef }) async {
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
    if(testCaseIds == null) {
     throw ApiException(400, "Missing required param: testCaseIds");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestCase/{testCaseIds}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "planId" + "}", planId.toString()).replaceAll("{" + "suiteId" + "}", suiteId.toString()).replaceAll("{" + "testCaseIds" + "}", testCaseIds.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(witFields != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "witFields", witFields));
    }
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TestCase>') as List).map((item) => item as TestCase).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get Test Case List return those test cases which have all the configuration Ids as mentioned in the optional paramter. If configuration Ids is null, it return all the test cases
  Future<List<TestCase>> get Test Case List(String organization, String project, int planId, int suiteId, String apiVersion, { String testIds, String configurationIds, String witFields, String continuationToken, bool returnIdentityRef, bool expand }) async {
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
    String path = "/{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestCase".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "planId" + "}", planId.toString()).replaceAll("{" + "suiteId" + "}", suiteId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(testIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "testIds", testIds));
    }
    if(configurationIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "configurationIds", configurationIds));
    }
    if(witFields != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "witFields", witFields));
    }
    if(continuationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continuationToken", continuationToken));
    }
    if(returnIdentityRef != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "returnIdentityRef", returnIdentityRef));
    }
    if(expand != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "expand", expand));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TestCase>') as List).map((item) => item as TestCase).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Removes test cases from a suite based on the list of test case Ids provided.
  Future remove Test Cases From Suite(String organization, String project, int planId, int suiteId, String testCaseIds, String apiVersion) async {
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
    if(testCaseIds == null) {
     throw ApiException(400, "Missing required param: testCaseIds");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestCase/{testCaseIds}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "planId" + "}", planId.toString()).replaceAll("{" + "suiteId" + "}", suiteId.toString()).replaceAll("{" + "testCaseIds" + "}", testCaseIds.toString());

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
                                             'DELETE',
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
  /// 
  ///
  /// Update the configurations for test cases
  Future<List<TestCase>> update(String organization, String project, int planId, int suiteId, String apiVersion, List<SuiteTestCaseCreateUpdateParameters> body) async {
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
    String path = "/{organization}/{project}/_apis/testplan/Plans/{planId}/Suites/{suiteId}/TestCase".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "planId" + "}", planId.toString()).replaceAll("{" + "suiteId" + "}", suiteId.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TestCase>') as List).map((item) => item as TestCase).toList();
    } else {
      return null;
    }
  }
}
