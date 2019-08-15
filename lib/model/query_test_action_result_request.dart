part of azure_devops_sdk.api;

class QueryTestActionResultRequest {
  
  LegacyTestCaseResultIdentifier identifier = null;
  
  String projectName = null;
  QueryTestActionResultRequest();

  @override
  String toString() {
    return 'QueryTestActionResultRequest[identifier=$identifier, projectName=$projectName, ]';
  }

  QueryTestActionResultRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['identifier'] == null) {
      identifier = null;
    } else {
      identifier = LegacyTestCaseResultIdentifier.fromJson(json['identifier']);
    }
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (identifier != null)
      json['identifier'] = identifier;
    if (projectName != null)
      json['projectName'] = projectName;
    return json;
  }

  static List<QueryTestActionResultRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<QueryTestActionResultRequest>() : json.map((value) => QueryTestActionResultRequest.fromJson(value)).toList();
  }

  static Map<String, QueryTestActionResultRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, QueryTestActionResultRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = QueryTestActionResultRequest.fromJson(value));
    }
    return map;
  }
}

