part of azure_devops_sdk.api;

class ResetTestResultsRequest {
  
  List<LegacyTestCaseResultIdentifier> ids = [];
  
  String projectName = null;
  ResetTestResultsRequest();

  @override
  String toString() {
    return 'ResetTestResultsRequest[ids=$ids, projectName=$projectName, ]';
  }

  ResetTestResultsRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['ids'] == null) {
      ids = null;
    } else {
      ids = LegacyTestCaseResultIdentifier.listFromJson(json['ids']);
    }
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ids != null)
      json['ids'] = ids;
    if (projectName != null)
      json['projectName'] = projectName;
    return json;
  }

  static List<ResetTestResultsRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<ResetTestResultsRequest>() : json.map((value) => ResetTestResultsRequest.fromJson(value)).toList();
  }

  static Map<String, ResetTestResultsRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResetTestResultsRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResetTestResultsRequest.fromJson(value));
    }
    return map;
  }
}

