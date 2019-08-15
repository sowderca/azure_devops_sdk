part of azure_devops_sdk.api;



class MembershipsApi {
  final ApiClient apiClient;

  MembershipsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Create a new membership between a container and subject.
  Future<GraphMembership> add(String organization, String subjectDescriptor, String containerDescriptor, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(subjectDescriptor == null) {
     throw ApiException(400, "Missing required param: subjectDescriptor");
    }
    if(containerDescriptor == null) {
     throw ApiException(400, "Missing required param: containerDescriptor");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/graph/memberships/{subjectDescriptor}/{containerDescriptor}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "subjectDescriptor" + "}", subjectDescriptor.toString()).replaceAll("{" + "containerDescriptor" + "}", containerDescriptor.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GraphMembership') as GraphMembership;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get a membership relationship between a container and subject.
  Future<GraphMembership> callGet(String organization, String subjectDescriptor, String containerDescriptor, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(subjectDescriptor == null) {
     throw ApiException(400, "Missing required param: subjectDescriptor");
    }
    if(containerDescriptor == null) {
     throw ApiException(400, "Missing required param: containerDescriptor");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/graph/memberships/{subjectDescriptor}/{containerDescriptor}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "subjectDescriptor" + "}", subjectDescriptor.toString()).replaceAll("{" + "containerDescriptor" + "}", containerDescriptor.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GraphMembership') as GraphMembership;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Check to see if a membership relationship between a container and subject exists.
  Future check Membership Existence(String organization, String subjectDescriptor, String containerDescriptor, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(subjectDescriptor == null) {
     throw ApiException(400, "Missing required param: subjectDescriptor");
    }
    if(containerDescriptor == null) {
     throw ApiException(400, "Missing required param: containerDescriptor");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/graph/memberships/{subjectDescriptor}/{containerDescriptor}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "subjectDescriptor" + "}", subjectDescriptor.toString()).replaceAll("{" + "containerDescriptor" + "}", containerDescriptor.toString());

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
                                             'HEAD',
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
  /// Get all the memberships where this descriptor is a member in the relationship.  The default value for direction is &#39;up&#39; meaning return all memberships where the subject is a member (e.g. all groups the subject is a member of).  Alternatively, passing the direction as &#39;down&#39; will return all memberships where the subject is a container (e.g. all members of the subject group).
  Future<List<GraphMembership>> list(String organization, String subjectDescriptor, String apiVersion, { String direction, int depth }) async {
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
    String path = "/{organization}/_apis/graph/Memberships/{subjectDescriptor}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "subjectDescriptor" + "}", subjectDescriptor.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(direction != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "direction", direction));
    }
    if(depth != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "depth", depth));
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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<GraphMembership>') as List).map((item) => item as GraphMembership).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Deletes a membership between a container and subject.
  Future remove Membership(String organization, String subjectDescriptor, String containerDescriptor, String apiVersion) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(subjectDescriptor == null) {
     throw ApiException(400, "Missing required param: subjectDescriptor");
    }
    if(containerDescriptor == null) {
     throw ApiException(400, "Missing required param: containerDescriptor");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/graph/memberships/{subjectDescriptor}/{containerDescriptor}".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "subjectDescriptor" + "}", subjectDescriptor.toString()).replaceAll("{" + "containerDescriptor" + "}", containerDescriptor.toString());

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
}
