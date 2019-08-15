part of azure_devops_sdk.api;



class CardsettingsApi {
  final ApiClient apiClient;

  CardsettingsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get board card settings for the board id or board by name
  Future<BoardCardSettings> callGet(String organization, String project, String board, String team, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(board == null) {
     throw ApiException(400, "Missing required param: board");
    }
    if(team == null) {
     throw ApiException(400, "Missing required param: team");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/{team}/_apis/work/boards/{board}/cardsettings".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "board" + "}", board.toString()).replaceAll("{" + "team" + "}", team.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'BoardCardSettings') as BoardCardSettings;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Update board card settings for the board id or board by name
  Future<BoardCardSettings> update Board Card Settings(String organization, String project, String board, String team, String apiVersion, BoardCardSettings body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(board == null) {
     throw ApiException(400, "Missing required param: board");
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
    String path = "/{organization}/{project}/{team}/_apis/work/boards/{board}/cardsettings".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "board" + "}", board.toString()).replaceAll("{" + "team" + "}", team.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'BoardCardSettings') as BoardCardSettings;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Update taskboard card settings
  Future update Taskboard Card Settings(String organization, String project, String team, String apiVersion, BoardCardSettings body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
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
    String path = "/{organization}/{project}/{team}/_apis/work/taskboard/cardsettings".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "team" + "}", team.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = ["application/json"];

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
    } else {
      return;
    }
  }
}
