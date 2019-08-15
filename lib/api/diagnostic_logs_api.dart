part of azure_devops_sdk.api;



class DiagnosticLogsApi {
  final ApiClient apiClient;

  DiagnosticLogsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// List diagnostic logs this service.
  Future<List<INotificationDiagnosticLog>> list(String source, String organization, String entryId, String apiVersion, { DateTime startTime, DateTime endTime }) async {
    Object postBody;

    // verify required params are set
    if(source == null) {
     throw ApiException(400, "Missing required param: source");
    }
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }
    if(entryId == null) {
     throw ApiException(400, "Missing required param: entryId");
    }
    if(apiVersion == null) {
     throw ApiException(400, "Missing required param: apiVersion");
    }

    // create path and map variables
    String path = "/{organization}/_apis/notification/diagnosticlogs/{source}/entries/{entryId}".replaceAll("{format}","json").replaceAll("{" + "source" + "}", source.toString()).replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "entryId" + "}", entryId.toString());

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
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<INotificationDiagnosticLog>') as List).map((item) => item as INotificationDiagnosticLog).toList();
    } else {
      return null;
    }
  }
}
