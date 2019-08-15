part of azure_devops_sdk.api;



class CapacitiesApi {
  final ApiClient apiClient;

  CapacitiesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get a team member&#39;s capacity
  Future<TeamMemberCapacityIdentityRef> callGet(String organization, String project, String iterationId, String teamMemberId, String team, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(iterationId == null) {
     throw ApiException(400, "Missing required param: iterationId");
    }
    if(teamMemberId == null) {
     throw ApiException(400, "Missing required param: teamMemberId");
    }
    if(team == null) {
     throw ApiException(400, "Missing required param: team");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/{team}/_apis/work/teamsettings/iterations/{iterationId}/capacities/{teamMemberId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "iterationId" + "}", iterationId.toString()).replaceAll("{" + "teamMemberId" + "}", teamMemberId.toString()).replaceAll("{" + "team" + "}", team.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'TeamMemberCapacityIdentityRef') as TeamMemberCapacityIdentityRef;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a team&#39;s capacity
  Future<List<TeamMemberCapacityIdentityRef>> list(String organization, String project, String iterationId, String team, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(iterationId == null) {
     throw ApiException(400, "Missing required param: iterationId");
    }
    if(team == null) {
     throw ApiException(400, "Missing required param: team");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/{team}/_apis/work/teamsettings/iterations/{iterationId}/capacities".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "iterationId" + "}", iterationId.toString()).replaceAll("{" + "team" + "}", team.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TeamMemberCapacityIdentityRef>') as List).map((item) => item as TeamMemberCapacityIdentityRef).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Replace a team&#39;s capacity
  Future<List<TeamMemberCapacityIdentityRef>> replace Capacities With Identity Ref(String organization, String project, String iterationId, String team, String apiVersion, List<TeamMemberCapacityIdentityRef> body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(iterationId == null) {
     throw ApiException(400, "Missing required param: iterationId");
    }
    if(team == null) {
     throw ApiException(400, "Missing required param: team");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/{team}/_apis/work/teamsettings/iterations/{iterationId}/capacities".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "iterationId" + "}", iterationId.toString()).replaceAll("{" + "team" + "}", team.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TeamMemberCapacityIdentityRef>') as List).map((item) => item as TeamMemberCapacityIdentityRef).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Update a team member&#39;s capacity
  Future<TeamMemberCapacityIdentityRef> update(String organization, String project, String iterationId, String teamMemberId, String team, String apiVersion, CapacityPatch body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(iterationId == null) {
     throw ApiException(400, "Missing required param: iterationId");
    }
    if(teamMemberId == null) {
     throw ApiException(400, "Missing required param: teamMemberId");
    }
    if(team == null) {
     throw ApiException(400, "Missing required param: team");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/{team}/_apis/work/teamsettings/iterations/{iterationId}/capacities/{teamMemberId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "iterationId" + "}", iterationId.toString()).replaceAll("{" + "teamMemberId" + "}", teamMemberId.toString()).replaceAll("{" + "team" + "}", team.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'TeamMemberCapacityIdentityRef') as TeamMemberCapacityIdentityRef;
    } else {
      return null;
    }
  }
}
