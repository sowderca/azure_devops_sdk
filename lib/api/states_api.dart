part of azure_devops_sdk.api;



class StatesApi {
  final ApiClient apiClient;

  StatesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Returns a single state definition in a work item type of the process.
  Future<WorkItemStateResultModel> callGet(String organization, String processId, String witRefName, String stateId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(processId == null) {
     throw ApiException(400, "Missing required param: processId");
    }
    if(witRefName == null) {
     throw ApiException(400, "Missing required param: witRefName");
    }
    if(stateId == null) {
     throw ApiException(400, "Missing required param: stateId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/states/{stateId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "witRefName" + "}", witRefName.toString()).replaceAll("{" + "stateId" + "}", stateId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkItemStateResultModel') as WorkItemStateResultModel;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Creates a state definition in the work item type of the process.
  Future<WorkItemStateResultModel> create(String organization, String processId, String witRefName, String apiVersion, WorkItemStateInputModel body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(processId == null) {
     throw ApiException(400, "Missing required param: processId");
    }
    if(witRefName == null) {
     throw ApiException(400, "Missing required param: witRefName");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/states".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "witRefName" + "}", witRefName.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkItemStateResultModel') as WorkItemStateResultModel;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Removes a state definition in the work item type of the process.
  Future delete(String organization, String processId, String witRefName, String stateId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(processId == null) {
     throw ApiException(400, "Missing required param: processId");
    }
    if(witRefName == null) {
     throw ApiException(400, "Missing required param: witRefName");
    }
    if(stateId == null) {
     throw ApiException(400, "Missing required param: stateId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/states/{stateId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "witRefName" + "}", witRefName.toString()).replaceAll("{" + "stateId" + "}", stateId.toString());

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
  /// Hides a state definition in the work item type of the process.Only states with customizationType:System can be hidden.
  Future<WorkItemStateResultModel> hide State Definition(String organization, String processId, String witRefName, String stateId, String apiVersion, HideStateModel body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(processId == null) {
     throw ApiException(400, "Missing required param: processId");
    }
    if(witRefName == null) {
     throw ApiException(400, "Missing required param: witRefName");
    }
    if(stateId == null) {
     throw ApiException(400, "Missing required param: stateId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/states/{stateId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "witRefName" + "}", witRefName.toString()).replaceAll("{" + "stateId" + "}", stateId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkItemStateResultModel') as WorkItemStateResultModel;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns a list of all state definitions in a work item type of the process.
  Future<List<WorkItemStateResultModel>> list(String organization, String processId, String witRefName, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(processId == null) {
     throw ApiException(400, "Missing required param: processId");
    }
    if(witRefName == null) {
     throw ApiException(400, "Missing required param: witRefName");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/states".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "witRefName" + "}", witRefName.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<WorkItemStateResultModel>') as List).map((item) => item as WorkItemStateResultModel).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Updates a given state definition in the work item type of the process.
  Future<WorkItemStateResultModel> update(String organization, String processId, String witRefName, String stateId, String apiVersion, WorkItemStateInputModel body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(processId == null) {
     throw ApiException(400, "Missing required param: processId");
    }
    if(witRefName == null) {
     throw ApiException(400, "Missing required param: witRefName");
    }
    if(stateId == null) {
     throw ApiException(400, "Missing required param: stateId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/states/{stateId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "witRefName" + "}", witRefName.toString()).replaceAll("{" + "stateId" + "}", stateId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkItemStateResultModel') as WorkItemStateResultModel;
    } else {
      return null;
    }
  }
}
