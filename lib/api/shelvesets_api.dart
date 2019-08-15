part of azure_devops_sdk.api;



class ShelvesetsApi {
  final ApiClient apiClient;

  ShelvesetsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get a single deep shelveset.
  Future<TfvcShelveset> callGet(String organization, String shelvesetId, String apiVersion, { bool requestDataIncludeLinks, bool requestDataIncludeWorkItems, bool requestDataIncludeDetails, int requestDataMaxChangeCount, int requestDataMaxCommentLength, String requestDataOwner, String requestDataName }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(shelvesetId == null) {
     throw ApiException(400, "Missing required param: shelvesetId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/tfvc/shelvesets".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "shelvesetId", shelvesetId));
    if(requestDataIncludeLinks != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.includeLinks", requestDataIncludeLinks));
    }
    if(requestDataIncludeWorkItems != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.includeWorkItems", requestDataIncludeWorkItems));
    }
    if(requestDataIncludeDetails != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.includeDetails", requestDataIncludeDetails));
    }
    if(requestDataMaxChangeCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.maxChangeCount", requestDataMaxChangeCount));
    }
    if(requestDataMaxCommentLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.maxCommentLength", requestDataMaxCommentLength));
    }
    if(requestDataOwner != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.owner", requestDataOwner));
    }
    if(requestDataName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "requestData.name", requestDataName));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'TfvcShelveset') as TfvcShelveset;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get changes included in a shelveset.
  Future<List<TfvcChange>> get Shelveset Changes(String organization, String shelvesetId, String apiVersion, { int $top, int $skip }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(shelvesetId == null) {
     throw ApiException(400, "Missing required param: shelvesetId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/tfvc/shelvesets/changes".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "shelvesetId", shelvesetId));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TfvcChange>') as List).map((item) => item as TfvcChange).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get work items associated with a shelveset.
  Future<List<AssociatedWorkItem>> get Shelveset Work Items(String organization, String shelvesetId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(shelvesetId == null) {
     throw ApiException(400, "Missing required param: shelvesetId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/tfvc/shelvesets/workitems".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "shelvesetId", shelvesetId));
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
}
