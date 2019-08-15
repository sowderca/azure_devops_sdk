part of azure_devops_sdk.api;



class ControlsApi {
  final ApiClient apiClient;

  ControlsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Creates a control in a group.
  Future<Control> create(String organization, String processId, String witRefName, String groupId, String apiVersion, Control body) async {
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
    if(groupId == null) {
     throw ApiException(400, "Missing required param: groupId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/groups/{groupId}/controls".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "witRefName" + "}", witRefName.toString()).replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Control') as Control;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Moves a control to a specified group.
  Future<Control> move Control To Group(String organization, String processId, String witRefName, String groupId, String controlId, String apiVersion, Control body, { String removeFromGroupId }) async {
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
    if(groupId == null) {
     throw ApiException(400, "Missing required param: groupId");
    }
    if(controlId == null) {
     throw ApiException(400, "Missing required param: controlId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/groups/{groupId}/controls/{controlId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "witRefName" + "}", witRefName.toString()).replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "controlId" + "}", controlId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(removeFromGroupId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "removeFromGroupId", removeFromGroupId));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Control') as Control;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Removes a control from the work item form.
  Future remove Control From Group(String organization, String processId, String witRefName, String groupId, String controlId, String apiVersion) async {
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
    if(groupId == null) {
     throw ApiException(400, "Missing required param: groupId");
    }
    if(controlId == null) {
     throw ApiException(400, "Missing required param: controlId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/groups/{groupId}/controls/{controlId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "witRefName" + "}", witRefName.toString()).replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "controlId" + "}", controlId.toString());

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
  /// Updates a control on the work item form.
  Future<Control> update(String organization, String processId, String witRefName, String groupId, String controlId, String apiVersion, Control body) async {
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
    if(groupId == null) {
     throw ApiException(400, "Missing required param: groupId");
    }
    if(controlId == null) {
     throw ApiException(400, "Missing required param: controlId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/groups/{groupId}/controls/{controlId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "witRefName" + "}", witRefName.toString()).replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "controlId" + "}", controlId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Control') as Control;
    } else {
      return null;
    }
  }
}
