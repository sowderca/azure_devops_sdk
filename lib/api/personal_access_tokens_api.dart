part of azure_devops_sdk.api;



class PersonalAccessTokensApi {
  final ApiClient apiClient;

  PersonalAccessTokensApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Lists of all the session token details of the personal access tokens (PATs) for a particular user.
  Future<TokenAdminPagedSessionTokens> list(String organization, String subjectDescriptor, String apiVersion, { int pageSize, String continuationToken, bool isPublic }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(subjectDescriptor == null) {
     throw ApiException(400, "Missing required param: subjectDescriptor");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/tokenadmin/personalaccesstokens/{subjectDescriptor}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "subjectDescriptor" + "}", subjectDescriptor.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
    }
    if(continuationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continuationToken", continuationToken));
    }
    if(isPublic != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isPublic", isPublic));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'TokenAdminPagedSessionTokens') as TokenAdminPagedSessionTokens;
    } else {
      return null;
    }
  }
}
