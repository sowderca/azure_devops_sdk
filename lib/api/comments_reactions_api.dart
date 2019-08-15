part of azure_devops_sdk.api;



class CommentsReactionsApi {
  final ApiClient apiClient;

  CommentsReactionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Adds a new reaction to a comment.
  Future<CommentReaction> create(String organization, String project, int workItemId, int commentId, String reactionType, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(workItemId == null) {
     throw ApiException(400, "Missing required param: workItemId");
    }
    if(commentId == null) {
     throw ApiException(400, "Missing required param: commentId");
    }
    if(reactionType == null) {
     throw ApiException(400, "Missing required param: reactionType");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wit/workItems/{workItemId}/comments/{commentId}/reactions/{reactionType}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "workItemId" + "}", workItemId.toString()).replaceAll("{" + "commentId" + "}", commentId.toString()).replaceAll("{" + "reactionType" + "}", reactionType.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'CommentReaction') as CommentReaction;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Deletes an existing reaction on a comment.
  Future<CommentReaction> delete(String organization, String project, int workItemId, int commentId, String reactionType, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(workItemId == null) {
     throw ApiException(400, "Missing required param: workItemId");
    }
    if(commentId == null) {
     throw ApiException(400, "Missing required param: commentId");
    }
    if(reactionType == null) {
     throw ApiException(400, "Missing required param: reactionType");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wit/workItems/{workItemId}/comments/{commentId}/reactions/{reactionType}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "workItemId" + "}", workItemId.toString()).replaceAll("{" + "commentId" + "}", commentId.toString()).replaceAll("{" + "reactionType" + "}", reactionType.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'CommentReaction') as CommentReaction;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets reactions of a comment.
  Future<List<CommentReaction>> list(String organization, String project, int workItemId, int commentId, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }
    if(workItemId == null) {
     throw ApiException(400, "Missing required param: workItemId");
    }
    if(commentId == null) {
     throw ApiException(400, "Missing required param: commentId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/{project}/_apis/wit/workItems/{workItemId}/comments/{commentId}/reactions".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "project" + "}", project.toString()).replaceAll("{" + "workItemId" + "}", workItemId.toString()).replaceAll("{" + "commentId" + "}", commentId.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<CommentReaction>') as List).map((item) => item as CommentReaction).toList();
    } else {
      return null;
    }
  }
}
