part of azure_devops_sdk.api;

class GitImportRequestParameters {
  /* Option to delete service endpoint when import is done */
  bool deleteServiceEndpointAfterImportIsDone = null;
  
  GitImportGitSource gitSource = null;
  /* Service Endpoint for connection to external endpoint */
  String serviceEndpointId = null;
  
  GitImportTfvcSource tfvcSource = null;
  GitImportRequestParameters();

  @override
  String toString() {
    return 'GitImportRequestParameters[deleteServiceEndpointAfterImportIsDone=$deleteServiceEndpointAfterImportIsDone, gitSource=$gitSource, serviceEndpointId=$serviceEndpointId, tfvcSource=$tfvcSource, ]';
  }

  GitImportRequestParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deleteServiceEndpointAfterImportIsDone'] == null) {
      deleteServiceEndpointAfterImportIsDone = null;
    } else {
          deleteServiceEndpointAfterImportIsDone = json['deleteServiceEndpointAfterImportIsDone'];
    }
    if (json['gitSource'] == null) {
      gitSource = null;
    } else {
      gitSource = GitImportGitSource.fromJson(json['gitSource']);
    }
    if (json['serviceEndpointId'] == null) {
      serviceEndpointId = null;
    } else {
          serviceEndpointId = json['serviceEndpointId'];
    }
    if (json['tfvcSource'] == null) {
      tfvcSource = null;
    } else {
      tfvcSource = GitImportTfvcSource.fromJson(json['tfvcSource']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deleteServiceEndpointAfterImportIsDone != null)
      json['deleteServiceEndpointAfterImportIsDone'] = deleteServiceEndpointAfterImportIsDone;
    if (gitSource != null)
      json['gitSource'] = gitSource;
    if (serviceEndpointId != null)
      json['serviceEndpointId'] = serviceEndpointId;
    if (tfvcSource != null)
      json['tfvcSource'] = tfvcSource;
    return json;
  }

  static List<GitImportRequestParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<GitImportRequestParameters>() : json.map((value) => GitImportRequestParameters.fromJson(value)).toList();
  }

  static Map<String, GitImportRequestParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitImportRequestParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitImportRequestParameters.fromJson(value));
    }
    return map;
  }
}

