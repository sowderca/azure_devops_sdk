part of azure_devops_sdk.api;



class ArtifactsApi {
  final ApiClient apiClient;

  ArtifactsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Associates an artifact with a build.
  Future<BuildArtifact> create(String organization, String project, int buildId, String apiVersion, BuildArtifact body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(buildId == null) {
     throw ApiException(400, "Missing required param: buildId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/build/builds/{buildId}/artifacts".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "buildId" + "}", buildId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'BuildArtifact') as BuildArtifact;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets all artifacts for a build.
  Future<List<BuildArtifact>> list(String organization, String project, int buildId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(buildId == null) {
     throw ApiException(400, "Missing required param: buildId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/build/builds/{buildId}/artifacts".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "buildId" + "}", buildId.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<BuildArtifact>') as List).map((item) => item as BuildArtifact).toList();
    } else {
      return null;
    }
  }
}