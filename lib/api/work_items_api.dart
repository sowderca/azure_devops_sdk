part of azure_devops_sdk.api;



class WorkItemsApi {
  final ApiClient apiClient;

  WorkItemsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Creates a single work item.
  Future<WorkItem> create(String organization, String project, String type, String apiVersion, JsonPatchDocument body, { bool validateOnly, bool bypassRules, bool suppressNotifications, String $expand }) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(type == null) {
     throw ApiException(400, "Missing required param: type");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wit/workitems/${type}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "type" + "}", type.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(validateOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "validateOnly", validateOnly));
    }
    if(bypassRules != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "bypassRules", bypassRules));
    }
    if(suppressNotifications != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "suppressNotifications", suppressNotifications));
    }
    if($expand != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$expand", $expand));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = ["application/json-patch+json"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkItem') as WorkItem;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Deletes the specified work item and sends it to the Recycle Bin, so that it can be restored back, if required. Optionally, if the destroy parameter has been set to true, it destroys the work item permanently. WARNING: If the destroy parameter is set to true, work items deleted by this command will NOT go to recycle-bin and there is no way to restore/recover them after deletion. It is recommended NOT to use this parameter. If you do, please use this parameter with extreme caution.
  Future<WorkItemDelete> delete(String organization, int id, String project, String apiVersion, { bool destroy }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wit/workitems/{id}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "id" + "}", id.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(destroy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "destroy", destroy));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkItemDelete') as WorkItemDelete;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns a single work item.
  Future<WorkItem> get Work Item(String organization, int id, String project, String apiVersion, { String fields, DateTime asOf, String $expand }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wit/workitems/{id}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "id" + "}", id.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(fields != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "fields", fields));
    }
    if(asOf != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "asOf", asOf));
    }
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkItem') as WorkItem;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns a single work item from a template.
  Future<WorkItem> get Work Item Template(String organization, String project, String type, String apiVersion, { String fields, DateTime asOf, String $expand }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(type == null) {
     throw ApiException(400, "Missing required param: type");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wit/workitems/${type}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "type" + "}", type.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(fields != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "fields", fields));
    }
    if(asOf != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "asOf", asOf));
    }
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkItem') as WorkItem;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets work items for a list of work item ids (Maximum 200)
  Future<List<WorkItem>> get Work Items Batch(String organization, String project, String apiVersion, WorkItemBatchGetRequest body) async {
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
    String path = "/{organization}/{project}/_apis/wit/workitemsbatch".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<WorkItem>') as List).map((item) => item as WorkItem).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns a list of work items (Maximum 200)
  Future<List<WorkItem>> list(String organization, String ids, String project, String apiVersion, { String fields, DateTime asOf, String $expand, String errorPolicy }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(ids == null) {
     throw ApiException(400, "Missing required param: ids");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wit/workitems".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "ids", ids));
    if(fields != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "fields", fields));
    }
    if(asOf != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "asOf", asOf));
    }
    if($expand != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$expand", $expand));
    }
    if(errorPolicy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "errorPolicy", errorPolicy));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<WorkItem>') as List).map((item) => item as WorkItem).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Updates a single work item.
  Future<WorkItem> update(String organization, int id, String project, String apiVersion, JsonPatchDocument body, { bool validateOnly, bool bypassRules, bool suppressNotifications, String $expand }) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
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
    String path = "/{organization}/{project}/_apis/wit/workitems/{id}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "id" + "}", id.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(validateOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "validateOnly", validateOnly));
    }
    if(bypassRules != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "bypassRules", bypassRules));
    }
    if(suppressNotifications != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "suppressNotifications", suppressNotifications));
    }
    if($expand != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$expand", $expand));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = ["application/json-patch+json"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkItem') as WorkItem;
    } else {
      return null;
    }
  }
}
