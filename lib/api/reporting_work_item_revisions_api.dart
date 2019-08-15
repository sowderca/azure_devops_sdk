part of azure_devops_sdk.api;



class ReportingWorkItemRevisionsApi {
  final ApiClient apiClient;

  ReportingWorkItemRevisionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get a batch of work item revisions with the option of including deleted items
  Future<ReportingWorkItemRevisionsBatch> read Reporting Revisions Get(String organization, String project, String apiVersion, { String fields, String types, String continuationToken, DateTime startDateTime, bool includeIdentityRef, bool includeDeleted, bool includeTagRef, bool includeLatestOnly, String $expand, bool includeDiscussionChangesOnly, int $maxPageSize }) async {
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
    String path = "/{organization}/{project}/_apis/wit/reporting/workitemrevisions".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(fields != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "fields", fields));
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
    if(includeIdentityRef != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeIdentityRef", includeIdentityRef));
    }
    if(includeDeleted != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeDeleted", includeDeleted));
    }
    if(includeTagRef != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeTagRef", includeTagRef));
    }
    if(includeLatestOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeLatestOnly", includeLatestOnly));
    }
    if($expand != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$expand", $expand));
    }
    if(includeDiscussionChangesOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeDiscussionChangesOnly", includeDiscussionChangesOnly));
    }
    if($maxPageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$maxPageSize", $maxPageSize));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'ReportingWorkItemRevisionsBatch') as ReportingWorkItemRevisionsBatch;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a batch of work item revisions. This request may be used if your list of fields is large enough that it may run the URL over the length limit.
  Future<ReportingWorkItemRevisionsBatch> read Reporting Revisions Post(String organization, String project, String apiVersion, ReportingWorkItemRevisionsFilter body, { String continuationToken, DateTime startDateTime, String $expand }) async {
    Object postBody = body;

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
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wit/reporting/workitemrevisions".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(continuationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continuationToken", continuationToken));
    }
    if(startDateTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "startDateTime", startDateTime));
    }
    if($expand != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$expand", $expand));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'ReportingWorkItemRevisionsBatch') as ReportingWorkItemRevisionsBatch;
    } else {
      return null;
    }
  }
}
