part of azure_devops_sdk.api;

class CreateTestResultsRequest {
  
  String projectName = null;
  
  List<LegacyTestCaseResult> results = [];
  CreateTestResultsRequest();

  @override
  String toString() {
    return 'CreateTestResultsRequest[projectName=$projectName, results=$results, ]';
  }

  CreateTestResultsRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
    if (json['results'] == null) {
      results = null;
    } else {
      results = LegacyTestCaseResult.listFromJson(json['results']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (projectName != null)
      json['projectName'] = projectName;
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<CreateTestResultsRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateTestResultsRequest>() : json.map((value) => CreateTestResultsRequest.fromJson(value)).toList();
  }

  static Map<String, CreateTestResultsRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateTestResultsRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateTestResultsRequest.fromJson(value));
    }
    return map;
  }
}

