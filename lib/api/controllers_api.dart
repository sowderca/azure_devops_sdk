part of azure_devops_sdk.api;



class ControllersApi {
  final ApiClient apiClient;

  ControllersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Gets a controller
  Future<BuildController> callGet(String organization, int controllerId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(controllerId == null) {
     throw ApiException(400, "Missing required param: controllerId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/build/controllers/{controllerId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "controllerId" + "}", controllerId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'BuildController') as BuildController;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets controller, optionally filtered by name
  Future<List<BuildController>> list(String organization, String apiVersion, { String name }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/build/controllers".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<BuildController>') as List).map((item) => item as BuildController).toList();
    } else {
      return null;
    }
  }
}