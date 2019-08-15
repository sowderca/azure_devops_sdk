part of azure_devops_sdk.api;



class LabelsApi {
  final ApiClient apiClient;

  LabelsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get a single deep label.
  Future<TfvcLabel> callGet(String organization, String labelId, String project, String apiVersion, { bool requestDataIncludeLinks, int requestDataMaxItemCount, String requestDataItemLabelFilter, String requestDataOwner, String requestDataName, String requestDataLabelScope }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(labelId == null) {
     throw ApiException(400, "Missing required param: labelId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/tfvc/labels/{labelId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "labelId" + "}", labelId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(requestDataIncludeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.includeLinks", requestDataIncludeLinks));
    }
    if(requestDataMaxItemCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.maxItemCount", requestDataMaxItemCount));
    }
    if(requestDataItemLabelFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.itemLabelFilter", requestDataItemLabelFilter));
    }
    if(requestDataOwner != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.owner", requestDataOwner));
    }
    if(requestDataName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.name", requestDataName));
    }
    if(requestDataLabelScope != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.labelScope", requestDataLabelScope));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'TfvcLabel') as TfvcLabel;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get items under a label.
  Future<List<TfvcItem>> get Label Items(String organization, String labelId, String apiVersion, { int $top, int $skip }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(labelId == null) {
     throw ApiException(400, "Missing required param: labelId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/tfvc/labels/{labelId}/items".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "labelId" + "}", labelId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
    }
    if($skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$skip", $skip));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TfvcItem>') as List).map((item) => item as TfvcItem).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a collection of shallow label references.
  Future<List<TfvcLabelRef>> list(String organization, String project, String apiVersion, { bool requestDataIncludeLinks, int requestDataMaxItemCount, String requestDataItemLabelFilter, String requestDataOwner, String requestDataName, String requestDataLabelScope, int $top, int $skip }) async {
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
    String path = "/{organization}/{project}/_apis/tfvc/labels".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(requestDataIncludeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.includeLinks", requestDataIncludeLinks));
    }
    if(requestDataMaxItemCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.maxItemCount", requestDataMaxItemCount));
    }
    if(requestDataItemLabelFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.itemLabelFilter", requestDataItemLabelFilter));
    }
    if(requestDataOwner != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.owner", requestDataOwner));
    }
    if(requestDataName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.name", requestDataName));
    }
    if(requestDataLabelScope != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.labelScope", requestDataLabelScope));
    }
    if($top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$top", $top));
    }
    if($skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "$skip", $skip));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TfvcLabelRef>') as List).map((item) => item as TfvcLabelRef).toList();
    } else {
      return null;
    }
  }
}
