part of azure_devops_sdk.api;



class EvaluationsApi {
  final ApiClient apiClient;

  EvaluationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Gets the present evaluation state of a policy.  Each policy which applies to a pull request will have an evaluation state which is specific to that policy running in the context of that pull request. Each evaluation is uniquely identified via a Guid. You can find all the policy evaluations for a specific pull request using the List operation of this controller.
  Future<PolicyEvaluationRecord> callGet(String organization, String project, String evaluationId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(evaluationId == null) {
     throw ApiException(400, "Missing required param: evaluationId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/policy/evaluations/{evaluationId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "evaluationId" + "}", evaluationId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PolicyEvaluationRecord') as PolicyEvaluationRecord;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieves a list of all the policy evaluation statuses for a specific pull request.  Evaluations are retrieved using an artifact ID which uniquely identifies the pull request. To generate an artifact ID for a pull request, use this template: &#x60;&#x60;&#x60; vstfs:///CodeReview/CodeReviewId/{projectId}/{pullRequestId} &#x60;&#x60;&#x60;
  Future<List<PolicyEvaluationRecord>> list(String organization, String project, String artifactId, String apiVersion, { bool includeNotApplicable, int $top, int $skip }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(artifactId == null) {
     throw ApiException(400, "Missing required param: artifactId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/policy/evaluations".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "artifactId", artifactId));
    if(includeNotApplicable != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeNotApplicable", includeNotApplicable));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<PolicyEvaluationRecord>') as List).map((item) => item as PolicyEvaluationRecord).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Requeue the policy evaluation.  Some policies define a \&quot;requeue\&quot; action which performs some policy-specific operation. You can trigger this operation by updating an existing policy evaluation and setting the PolicyEvaluationRecord.Status field to Queued. Although any policy evaluation can be requeued, at present only build policies perform any action in response. Requeueing a build policy will queue a new build to run (cancelling any existing build which is running).
  Future<PolicyEvaluationRecord> requeue Policy Evaluation(String organization, String project, String evaluationId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(evaluationId == null) {
     throw ApiException(400, "Missing required param: evaluationId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/policy/evaluations/{evaluationId}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "evaluationId" + "}", evaluationId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PolicyEvaluationRecord') as PolicyEvaluationRecord;
    } else {
      return null;
    }
  }
}
