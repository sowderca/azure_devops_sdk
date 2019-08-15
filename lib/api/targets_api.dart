part of azure_devops_sdk.api;



class TargetsApi {
  final ApiClient apiClient;

  TargetsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get a deployment target by its ID in a deployment group
  Future<DeploymentMachine> callGet(String organization, String project, int deploymentGroupId, int targetId, String apiVersion, { String $expand }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(deploymentGroupId == null) {
     throw ApiException(400, "Missing required param: deploymentGroupId");
    }
    if(targetId == null) {
     throw ApiException(400, "Missing required param: targetId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/distributedtask/deploymentgroups/{deploymentGroupId}/targets/{targetId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "deploymentGroupId" + "}", deploymentGroupId.toString()).replaceAll("{" + "targetId" + "}", targetId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'DeploymentMachine') as DeploymentMachine;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Delete a deployment target in a deployment group. This deletes the agent from associated deployment pool too.
  Future delete(String organization, String project, int deploymentGroupId, int targetId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(deploymentGroupId == null) {
     throw ApiException(400, "Missing required param: deploymentGroupId");
    }
    if(targetId == null) {
     throw ApiException(400, "Missing required param: targetId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/distributedtask/deploymentgroups/{deploymentGroupId}/targets/{targetId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "deploymentGroupId" + "}", deploymentGroupId.toString()).replaceAll("{" + "targetId" + "}", targetId.toString());

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
  /// Get a list of deployment targets in a deployment group.
  Future<List<DeploymentMachine>> list(String organization, String project, int deploymentGroupId, String apiVersion, { String tags, String name, bool partialNameMatch, String $expand, String agentStatus, String agentJobResult, String continuationToken, int $top, bool enabled, String propertyFilters }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(deploymentGroupId == null) {
     throw ApiException(400, "Missing required param: deploymentGroupId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/distributedtask/deploymentgroups/{deploymentGroupId}/targets".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "deploymentGroupId" + "}", deploymentGroupId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(tags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tags", tags));
    }
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
    }
    if(partialNameMatch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "partialNameMatch", partialNameMatch));
    }
    if($expand != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$expand", $expand));
    }
    if(agentStatus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "agentStatus", agentStatus));
    }
    if(agentJobResult != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "agentJobResult", agentJobResult));
    }
    if(continuationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continuationToken", continuationToken));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
    }
    if(enabled != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "enabled", enabled));
    }
    if(propertyFilters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "propertyFilters", propertyFilters));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<DeploymentMachine>') as List).map((item) => item as DeploymentMachine).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Update tags of a list of deployment targets in a deployment group.
  Future<List<DeploymentMachine>> update(String organization, String project, int deploymentGroupId, String apiVersion, List<DeploymentTargetUpdateParameter> body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(deploymentGroupId == null) {
     throw ApiException(400, "Missing required param: deploymentGroupId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/distributedtask/deploymentgroups/{deploymentGroupId}/targets".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "deploymentGroupId" + "}", deploymentGroupId.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<DeploymentMachine>') as List).map((item) => item as DeploymentMachine).toList();
    } else {
      return null;
    }
  }
}
