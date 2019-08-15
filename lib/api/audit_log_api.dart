part of azure_devops_sdk.api;



class AuditLogApi {
  final ApiClient apiClient;

  AuditLogApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Queries audit log entries
  Future<AuditLogQueryResult> query(String organization, String apiVersion, { DateTime startTime, DateTime endTime, int batchSize, String continuationToken, bool skipAggregation }) async {
    Object postBody;

    // verify required params are set
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/audit/auditlog".replaceAll("{format}","json").replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(startTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "startTime", startTime));
    }
    if(endTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "endTime", endTime));
    }
    if(batchSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "batchSize", batchSize));
    }
    if(continuationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continuationToken", continuationToken));
    }
    if(skipAggregation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "skipAggregation", skipAggregation));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'AuditLogQueryResult') as AuditLogQueryResult;
    } else {
      return null;
    }
  }
}
