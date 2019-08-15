part of azure_devops_sdk.api;



class ApprovalsApi {
  final ApiClient apiClient;

  ApprovalsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get a list of approvals
  Future<List<ReleaseApproval>> list(String organization, String project, String apiVersion, { String assignedToFilter, String statusFilter, String releaseIdsFilter, String typeFilter, int top, int continuationToken, String queryOrder, bool includeMyGroupApprovals }) async {
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
    String path = "/{organization}/{project}/_apis/release/approvals".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(assignedToFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "assignedToFilter", assignedToFilter));
    }
    if(statusFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "statusFilter", statusFilter));
    }
    if(releaseIdsFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "releaseIdsFilter", releaseIdsFilter));
    }
    if(typeFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "typeFilter", typeFilter));
    }
    if(top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "top", top));
    }
    if(continuationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continuationToken", continuationToken));
    }
    if(queryOrder != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "queryOrder", queryOrder));
    }
    if(includeMyGroupApprovals != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeMyGroupApprovals", includeMyGroupApprovals));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<ReleaseApproval>') as List).map((item) => item as ReleaseApproval).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Update status of an approval
  Future<ReleaseApproval> update(String organization, String project, int approvalId, String apiVersion, ReleaseApproval body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(approvalId == null) {
     throw ApiException(400, "Missing required param: approvalId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/release/approvals/{approvalId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "approvalId" + "}", approvalId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'ReleaseApproval') as ReleaseApproval;
    } else {
      return null;
    }
  }
}
