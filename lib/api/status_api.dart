part of azure_devops_sdk.api;



class StatusApi {
  final ApiClient apiClient;

  StatusApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// &lt;p&gt;Gets the build status for a definition, optionally scoped to a specific branch, stage, job, and configuration.&lt;/p&gt; &lt;p&gt;If there are more than one, then it is required to pass in a stageName value when specifying a jobName, and the same rule then applies for both if passing a configuration parameter.&lt;/p&gt;
  Future<String> callGet(String organization, String project, String definition, String apiVersion, { String branchName, String stageName, String jobName, String configuration, String label }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(definition == null) {
     throw ApiException(400, "Missing required param: definition");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/build/status/{definition}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "definition" + "}", definition.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(branchName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "branchName", branchName));
    }
    if(stageName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "stageName", stageName));
    }
    if(jobName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "jobName", jobName));
    }
    if(configuration != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "configuration", configuration));
    }
    if(label != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "label", label));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "api-version", apiVersion));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["accessToken"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }
}
