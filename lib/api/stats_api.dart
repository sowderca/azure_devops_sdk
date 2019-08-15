part of azure_devops_sdk.api;



class StatsApi {
  final ApiClient apiClient;

  StatsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Retrieve statistics about all branches within a repository.
  Future<List<GitBranchStats>> list(String organization, String repositoryId, String project, String apiVersion, { String baseVersionDescriptorVersionOptions, String baseVersionDescriptorVersion, String baseVersionDescriptorVersionType }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(repositoryId == null) {
     throw ApiException(400, "Missing required param: repositoryId");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/git/repositories/{repositoryId}/stats/branches".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "repositoryId" + "}", repositoryId.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(baseVersionDescriptorVersionOptions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "baseVersionDescriptor.versionOptions", baseVersionDescriptorVersionOptions));
    }
    if(baseVersionDescriptorVersion != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "baseVersionDescriptor.version", baseVersionDescriptorVersion));
    }
    if(baseVersionDescriptorVersionType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "baseVersionDescriptor.versionType", baseVersionDescriptorVersionType));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<GitBranchStats>') as List).map((item) => item as GitBranchStats).toList();
    } else {
      return null;
    }
  }
}
