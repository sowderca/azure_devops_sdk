part of azure_devops_sdk.api;



class ChartimagesApi {
  final ApiClient apiClient;

  ChartimagesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get a board chart image.
  Future<String> get Board Chart Image(String organization, String project, String team, String board, String name, String apiVersion, { int width, int height, bool showDetails, String title }) async {
    Object postBody;

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
    if(board == null) {
     throw ApiException(400, "Missing required param: board");
    }
    if(name == null) {
     throw ApiException(400, "Missing required param: name");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/{team}/_apis/work/boards/{board}/chartimages/{name}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "team" + "}", team.toString()).replaceAll("{" + "board" + "}", board.toString()).replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(width != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "width", width));
    }
    if(height != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "height", height));
    }
    if(showDetails != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showDetails", showDetails));
    }
    if(title != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "title", title));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get an iteration chart image.
  Future<String> get Iteration Chart Image(String organization, String project, String team, String iterationId, String name, String apiVersion, { int width, int height, bool showDetails, String title }) async {
    Object postBody;

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
    if(iterationId == null) {
     throw ApiException(400, "Missing required param: iterationId");
    }
    if(name == null) {
     throw ApiException(400, "Missing required param: name");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/{team}/_apis/work/iterations/{iterationId}/chartimages/{name}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "team" + "}", team.toString()).replaceAll("{" + "iterationId" + "}", iterationId.toString()).replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(width != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "width", width));
    }
    if(height != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "height", height));
    }
    if(showDetails != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showDetails", showDetails));
    }
    if(title != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "title", title));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get an iterations chart image.
  Future<String> get Iterations Chart Image(String organization, String project, String team, String name, String apiVersion, { int iterationsNumber, int width, int height, bool showDetails, String title }) async {
    Object postBody;

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
    if(name == null) {
     throw ApiException(400, "Missing required param: name");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/{team}/_apis/work/iterations/chartimages/{name}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "team" + "}", team.toString()).replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(iterationsNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "iterationsNumber", iterationsNumber));
    }
    if(width != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "width", width));
    }
    if(height != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "height", height));
    }
    if(showDetails != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showDetails", showDetails));
    }
    if(title != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "title", title));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
}
