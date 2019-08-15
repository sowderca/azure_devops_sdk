part of azure_devops_sdk.api;



class ReportingWorkItemLinksApi {
  final ApiClient apiClient;

  ReportingWorkItemLinksApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get a batch of work item links
  Future<ReportingWorkItemLinksBatch> callGet(String organization, String project, String apiVersion, { String linkTypes, String types, String continuationToken, DateTime startDateTime }) async {
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
    String path = "/{organization}/{project}/_apis/wit/reporting/workitemlinks".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(linkTypes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "linkTypes", linkTypes));
    }
    if(types != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "types", types));
    }
    if(continuationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continuationToken", continuationToken));
    }
    if(startDateTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "startDateTime", startDateTime));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'ReportingWorkItemLinksBatch') as ReportingWorkItemLinksBatch;
    } else {
      return null;
    }
  }
}
