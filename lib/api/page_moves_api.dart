part of azure_devops_sdk.api;



class PageMovesApi {
  final ApiClient apiClient;

  PageMovesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Creates a page move operation that updates the path and order of the page as provided in the parameters.
  Future<WikiPageMove> create(String organization, String project, String wikiIdentifier, String apiVersion, WikiPageMoveParameters body, { String comment, String versionDescriptorVersionOptions, String versionDescriptorVersion, String versionDescriptorVersionType }) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(wikiIdentifier == null) {
     throw ApiException(400, "Missing required param: wikiIdentifier");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/pagemoves".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "wikiIdentifier" + "}", wikiIdentifier.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(comment != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "comment", comment));
    }
    if(versionDescriptorVersionOptions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "versionDescriptor.versionOptions", versionDescriptorVersionOptions));
    }
    if(versionDescriptorVersion != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "versionDescriptor.version", versionDescriptorVersion));
    }
    if(versionDescriptorVersionType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "versionDescriptor.versionType", versionDescriptorVersionType));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'WikiPageMove') as WikiPageMove;
    } else {
      return null;
    }
  }
}
