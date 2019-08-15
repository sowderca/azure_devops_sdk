part of azure_devops_sdk.api;

class QueryByRunRequest {
  
  bool includeActionResults = null;
  
  String outcome = null;
  
  String owner = null;
  
  int pageSize = null;
  
  String projectName = null;
  
  String state = null;
  
  int testRunId = null;
  QueryByRunRequest();

  @override
  String toString() {
    return 'QueryByRunRequest[includeActionResults=$includeActionResults, outcome=$outcome, owner=$owner, pageSize=$pageSize, projectName=$projectName, state=$state, testRunId=$testRunId, ]';
  }

  QueryByRunRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['includeActionResults'] == null) {
      includeActionResults = null;
    } else {
          includeActionResults = json['includeActionResults'];
    }
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
          owner = json['owner'];
    }
    if (json['pageSize'] == null) {
      pageSize = null;
    } else {
          pageSize = json['pageSize'];
    }
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (includeActionResults != null)
      json['includeActionResults'] = includeActionResults;
    if (outcome != null)
      json['outcome'] = outcome;
    if (owner != null)
      json['owner'] = owner;
    if (pageSize != null)
      json['pageSize'] = pageSize;
    if (projectName != null)
      json['projectName'] = projectName;
    if (state != null)
      json['state'] = state;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<QueryByRunRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<QueryByRunRequest>() : json.map((value) => QueryByRunRequest.fromJson(value)).toList();
  }

  static Map<String, QueryByRunRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, QueryByRunRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = QueryByRunRequest.fromJson(value));
    }
    return map;
  }
}

