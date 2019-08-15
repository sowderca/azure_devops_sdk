part of azure_devops_sdk.api;

class QueryTestRunsRequest {
  
  String buildUri = null;
  
  String owner = null;
  
  int planId = null;
  
  int skip = null;
  
  String teamProjectName = null;
  
  int testRunId = null;
  
  int top = null;
  QueryTestRunsRequest();

  @override
  String toString() {
    return 'QueryTestRunsRequest[buildUri=$buildUri, owner=$owner, planId=$planId, skip=$skip, teamProjectName=$teamProjectName, testRunId=$testRunId, top=$top, ]';
  }

  QueryTestRunsRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['buildUri'] == null) {
      buildUri = null;
    } else {
          buildUri = json['buildUri'];
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
          owner = json['owner'];
    }
    if (json['planId'] == null) {
      planId = null;
    } else {
          planId = json['planId'];
    }
    if (json['skip'] == null) {
      skip = null;
    } else {
          skip = json['skip'];
    }
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
    if (json['top'] == null) {
      top = null;
    } else {
          top = json['top'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (buildUri != null)
      json['buildUri'] = buildUri;
    if (owner != null)
      json['owner'] = owner;
    if (planId != null)
      json['planId'] = planId;
    if (skip != null)
      json['skip'] = skip;
    if (teamProjectName != null)
      json['teamProjectName'] = teamProjectName;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    if (top != null)
      json['top'] = top;
    return json;
  }

  static List<QueryTestRunsRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<QueryTestRunsRequest>() : json.map((value) => QueryTestRunsRequest.fromJson(value)).toList();
  }

  static Map<String, QueryTestRunsRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, QueryTestRunsRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = QueryTestRunsRequest.fromJson(value));
    }
    return map;
  }
}

