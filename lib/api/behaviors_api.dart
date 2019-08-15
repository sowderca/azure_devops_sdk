part of azure_devops_sdk.api;



class BehaviorsApi {
  final ApiClient apiClient;

  BehaviorsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Returns a behavior of the process.
  Future<ProcessBehavior> callGet(String organization, String processId, String behaviorRefName, String apiVersion, { String $expand }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(processId == null) {
     throw ApiException(400, "Missing required param: processId");
    }
    if(behaviorRefName == null) {
     throw ApiException(400, "Missing required param: behaviorRefName");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/behaviors/{behaviorRefName}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "behaviorRefName" + "}", behaviorRefName.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if($expand != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$expand", $expand));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'ProcessBehavior') as ProcessBehavior;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Creates a single behavior in the given process.
  Future<ProcessBehavior> create(String organization, String processId, String apiVersion, ProcessBehaviorCreateRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(processId == null) {
     throw ApiException(400, "Missing required param: processId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/behaviors".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'ProcessBehavior') as ProcessBehavior;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Removes a behavior in the process.
  Future delete(String organization, String processId, String behaviorRefName, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(processId == null) {
     throw ApiException(400, "Missing required param: processId");
    }
    if(behaviorRefName == null) {
     throw ApiException(400, "Missing required param: behaviorRefName");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/behaviors/{behaviorRefName}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "behaviorRefName" + "}", behaviorRefName.toString());

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
  /// Returns a list of all behaviors in the process.
  Future<List<ProcessBehavior>> list(String organization, String processId, String apiVersion, { String $expand }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(processId == null) {
     throw ApiException(400, "Missing required param: processId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/behaviors".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if($expand != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$expand", $expand));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<ProcessBehavior>') as List).map((item) => item as ProcessBehavior).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns a list of behaviors for the process.
  Future<List<AdminBehavior>> list_1(String organization, String processId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(processId == null) {
     throw ApiException(400, "Missing required param: processId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processadmin/{processId}/behaviors".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["accessToken"];

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<AdminBehavior>') as List).map((item) => item as AdminBehavior).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Replaces a behavior in the process.
  Future<ProcessBehavior> update(String organization, String processId, String behaviorRefName, String apiVersion, ProcessBehaviorUpdateRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(processId == null) {
     throw ApiException(400, "Missing required param: processId");
    }
    if(behaviorRefName == null) {
     throw ApiException(400, "Missing required param: behaviorRefName");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/behaviors/{behaviorRefName}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "behaviorRefName" + "}", behaviorRefName.toString());

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
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ProcessBehavior') as ProcessBehavior;
    } else {
      return null;
    }
  }
}
