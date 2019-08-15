part of azure_devops_sdk.api;



class PagesApi {
  final ApiClient apiClient;

  PagesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Adds a page to the work item form.
  Future<Page> add(String organization, String processId, String witRefName, String apiVersion, Page body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(processId == null) {
     throw ApiException(400, "Missing required param: processId");
    }
    if(witRefName == null) {
     throw ApiException(400, "Missing required param: witRefName");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/pages".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "witRefName" + "}", witRefName.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Page') as Page;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Creates or edits a wiki page.
  Future<WikiPage> create Or Update(String organization, String project, String wikiIdentifier, String path, String version, String apiVersion, WikiPageCreateOrUpdateParameters body, { String comment, String versionDescriptorVersionOptions, String versionDescriptorVersion, String versionDescriptorVersionType }) async {
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
    if(path == null) {
     throw ApiException(400, "Missing required param: path");
    }
    if(version == null) {
     throw ApiException(400, "Missing required param: version");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/pages".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "wikiIdentifier" + "}", wikiIdentifier.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "path", path));
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
    headerParams["Version"] = version;

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
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WikiPage') as WikiPage;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Deletes a wiki page.
  Future<WikiPage> delete Page(String organization, String project, String wikiIdentifier, String path, String apiVersion, { String comment, String versionDescriptorVersionOptions, String versionDescriptorVersion, String versionDescriptorVersionType }) async {
    Object postBody;

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
    if(path == null) {
     throw ApiException(400, "Missing required param: path");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/pages".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "wikiIdentifier" + "}", wikiIdentifier.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "path", path));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'WikiPage') as WikiPage;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Deletes a wiki page.
  Future<WikiPage> delete Page By Id(String organization, String project, String wikiIdentifier, int id, String apiVersion, { String comment }) async {
    Object postBody;

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
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/pages/{id}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "wikiIdentifier" + "}", wikiIdentifier.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(comment != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "comment", comment));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'WikiPage') as WikiPage;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets metadata or content of the wiki page for the provided path. Content negotiation is done based on the &#x60;Accept&#x60; header sent in the request.
  Future<WikiPage> get Page(String organization, String project, String wikiIdentifier, String apiVersion, { String path, String recursionLevel, String versionDescriptorVersionOptions, String versionDescriptorVersion, String versionDescriptorVersionType, bool includeContent }) async {
    Object postBody;

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

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/pages".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "wikiIdentifier" + "}", wikiIdentifier.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(path != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "path", path));
    }
    if(recursionLevel != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "recursionLevel", recursionLevel));
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
    if(includeContent != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeContent", includeContent));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'WikiPage') as WikiPage;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets metadata or content of the wiki page for the provided page id. Content negotiation is done based on the &#x60;Accept&#x60; header sent in the request.
  Future<WikiPage> get Page By Id(String organization, String project, String wikiIdentifier, int id, String apiVersion, { String recursionLevel, bool includeContent }) async {
    Object postBody;

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
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/pages/{id}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "wikiIdentifier" + "}", wikiIdentifier.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(recursionLevel != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "recursionLevel", recursionLevel));
    }
    if(includeContent != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeContent", includeContent));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'WikiPage') as WikiPage;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Removes a page from the work item form
  Future remove Page(String organization, String processId, String witRefName, String pageId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(processId == null) {
     throw ApiException(400, "Missing required param: processId");
    }
    if(witRefName == null) {
     throw ApiException(400, "Missing required param: witRefName");
    }
    if(pageId == null) {
     throw ApiException(400, "Missing required param: pageId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/pages/{pageId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "witRefName" + "}", witRefName.toString()).replaceAll("{" + "pageId" + "}", pageId.toString());

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
    } else {
      return;
    }
  }
  /// 
  ///
  /// Edits a wiki page.
  Future<WikiPage> update(String organization, String project, String wikiIdentifier, int id, String version, String apiVersion, WikiPageCreateOrUpdateParameters body, { String comment }) async {
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
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(version == null) {
     throw ApiException(400, "Missing required param: version");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/pages/{id}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "wikiIdentifier" + "}", wikiIdentifier.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(comment != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "comment", comment));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));
    headerParams["Version"] = version;

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'WikiPage') as WikiPage;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Updates a page on the work item form
  Future<Page> update_1(String organization, String processId, String witRefName, String apiVersion, Page body) async {
    Object postBody = body;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(processId == null) {
     throw ApiException(400, "Missing required param: processId");
    }
    if(witRefName == null) {
     throw ApiException(400, "Missing required param: witRefName");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/pages".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "processId" + "}", processId.toString()).replaceAll("{" + "witRefName" + "}", witRefName.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Page') as Page;
    } else {
      return null;
    }
  }
}
