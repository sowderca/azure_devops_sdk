part of azure_devops_sdk.api;



class DeploymentsApi {
  final ApiClient apiClient;

  DeploymentsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// 
  Future<List<Deployment>> list(String organization, String project, String apiVersion, { int definitionId, int definitionEnvironmentId, String createdBy, DateTime minModifiedTime, DateTime maxModifiedTime, String deploymentStatus, String operationStatus, bool latestAttemptsOnly, String queryOrder, int $top, int continuationToken, String createdFor, DateTime minStartedTime, DateTime maxStartedTime, String sourceBranch }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/release/deployments".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(definitionId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "definitionId", definitionId));
    }
    if(definitionEnvironmentId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "definitionEnvironmentId", definitionEnvironmentId));
    }
    if(createdBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "createdBy", createdBy));
    }
    if(minModifiedTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minModifiedTime", minModifiedTime));
    }
    if(maxModifiedTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxModifiedTime", maxModifiedTime));
    }
    if(deploymentStatus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "deploymentStatus", deploymentStatus));
    }
    if(operationStatus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "operationStatus", operationStatus));
    }
    if(latestAttemptsOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "latestAttemptsOnly", latestAttemptsOnly));
    }
    if(queryOrder != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "queryOrder", queryOrder));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
    }
    if(continuationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continuationToken", continuationToken));
    }
    if(createdFor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "createdFor", createdFor));
    }
    if(minStartedTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minStartedTime", minStartedTime));
    }
    if(maxStartedTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxStartedTime", maxStartedTime));
    }
    if(sourceBranch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sourceBranch", sourceBranch));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Deployment>') as List).map((item) => item as Deployment).toList();
    } else {
      return null;
    }
  }
}
