part of azure_devops_sdk.api;

class QueryTestRunStatsRequest {
  
  String teamProjectName = null;
  
  int testRunId = null;
  QueryTestRunStatsRequest();

  @override
  String toString() {
    return 'QueryTestRunStatsRequest[teamProjectName=$teamProjectName, testRunId=$testRunId, ]';
  }

  QueryTestRunStatsRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['teamProjectName'] == null) {
      teamProjectName = null;
    } else {
          teamProjectName = json['teamProjectName'];
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (teamProjectName != null)
      json['teamProjectName'] = teamProjectName;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<QueryTestRunStatsRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<QueryTestRunStatsRequest>() : json.map((value) => QueryTestRunStatsRequest.fromJson(value)).toList();
  }

  static Map<String, QueryTestRunStatsRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, QueryTestRunStatsRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = QueryTestRunStatsRequest.fromJson(value));
    }
    return map;
  }
}

