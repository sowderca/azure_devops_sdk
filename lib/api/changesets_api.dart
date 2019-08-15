part of azure_devops_sdk.api;



class ChangesetsApi {
  final ApiClient apiClient;

  ChangesetsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Retrieve a Tfvc Changeset
  Future<TfvcChangeset> callGet(String organization, int id, String project, String apiVersion, { int maxChangeCount, bool includeDetails, bool includeWorkItems, int maxCommentLength, bool includeSourceRename, int $skip, int $top, String $orderby, Object searchCriteriaMappings, bool searchCriteriaIncludeLinks, bool searchCriteriaFollowRenames, int searchCriteriaToId, int searchCriteriaFromId, String searchCriteriaToDate, String searchCriteriaFromDate, String searchCriteriaAuthor, String searchCriteriaItemPath }) async {
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
    String path = "/{organization}/{project}/_apis/tfvc/changesets/{id}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "id" + "}", id.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(maxChangeCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxChangeCount", maxChangeCount));
    }
    if(includeDetails != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeDetails", includeDetails));
    }
    if(includeWorkItems != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeWorkItems", includeWorkItems));
    }
    if(maxCommentLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCommentLength", maxCommentLength));
    }
    if(includeSourceRename != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeSourceRename", includeSourceRename));
    }
    if($skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$skip", $skip));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
    }
    if($orderby != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$orderby", $orderby));
    }
    if(searchCriteriaMappings != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.mappings", searchCriteriaMappings));
    }
    if(searchCriteriaIncludeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.includeLinks", searchCriteriaIncludeLinks));
    }
    if(searchCriteriaFollowRenames != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.followRenames", searchCriteriaFollowRenames));
    }
    if(searchCriteriaToId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.toId", searchCriteriaToId));
    }
    if(searchCriteriaFromId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.fromId", searchCriteriaFromId));
    }
    if(searchCriteriaToDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.toDate", searchCriteriaToDate));
    }
    if(searchCriteriaFromDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.fromDate", searchCriteriaFromDate));
    }
    if(searchCriteriaAuthor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.author", searchCriteriaAuthor));
    }
    if(searchCriteriaItemPath != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.itemPath", searchCriteriaItemPath));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'TfvcChangeset') as TfvcChangeset;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Create a new changeset.  Accepts TfvcChangesetToCreate as JSON body
  Future<TfvcChangesetRef> create(String organization, String project, String apiVersion, TfvcChangeset body) async {
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
    String path = "/{organization}/{project}/_apis/tfvc/changesets".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'TfvcChangesetRef') as TfvcChangesetRef;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns changesets for a given list of changeset Ids.
  Future<List<TfvcChangesetRef>> get Batched Changesets(String organization, String apiVersion, TfvcChangesetsRequestData body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/_apis/tfvc/changesetsbatch".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TfvcChangesetRef>') as List).map((item) => item as TfvcChangesetRef).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve Tfvc changes for a given changeset.
  Future<List<TfvcChange>> get Changeset Changes(String organization, int id, String apiVersion, { int $skip, int $top }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/tfvc/changesets/{id}/changes".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if($skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$skip", $skip));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TfvcChange>') as List).map((item) => item as TfvcChange).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieves the work items associated with a particular changeset.
  Future<List<AssociatedWorkItem>> get Changeset Work Items(String organization, int id, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/tfvc/changesets/{id}/workItems".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "id" + "}", id.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<AssociatedWorkItem>') as List).map((item) => item as AssociatedWorkItem).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve Tfvc Changesets  Note: This is a new version of the GetChangesets API that doesn&#39;t expose the unneeded queryParams present in the 1.0 version of the API.
  Future<List<TfvcChangesetRef>> get Changesets(String organization, String project, String apiVersion, { int maxCommentLength, int $skip, int $top, String $orderby, Object searchCriteriaMappings, bool searchCriteriaIncludeLinks, bool searchCriteriaFollowRenames, int searchCriteriaToId, int searchCriteriaFromId, String searchCriteriaToDate, String searchCriteriaFromDate, String searchCriteriaAuthor, String searchCriteriaItemPath }) async {
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
    String path = "/{organization}/{project}/_apis/tfvc/changesets".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(maxCommentLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxCommentLength", maxCommentLength));
    }
    if($skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$skip", $skip));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
    }
    if($orderby != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$orderby", $orderby));
    }
    if(searchCriteriaMappings != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.mappings", searchCriteriaMappings));
    }
    if(searchCriteriaIncludeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.includeLinks", searchCriteriaIncludeLinks));
    }
    if(searchCriteriaFollowRenames != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.followRenames", searchCriteriaFollowRenames));
    }
    if(searchCriteriaToId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.toId", searchCriteriaToId));
    }
    if(searchCriteriaFromId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.fromId", searchCriteriaFromId));
    }
    if(searchCriteriaToDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.toDate", searchCriteriaToDate));
    }
    if(searchCriteriaFromDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.fromDate", searchCriteriaFromDate));
    }
    if(searchCriteriaAuthor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.author", searchCriteriaAuthor));
    }
    if(searchCriteriaItemPath != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchCriteria.itemPath", searchCriteriaItemPath));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TfvcChangesetRef>') as List).map((item) => item as TfvcChangesetRef).toList();
    } else {
      return null;
    }
  }
}
