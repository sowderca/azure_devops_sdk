part of azure_devops_sdk.api;

class AbortTestRunRequest {
  
  int options = null;
  
  String projectName = null;
  
  int revision = null;
  
  int testRunId = null;
  AbortTestRunRequest();

  @override
  String toString() {
    return 'AbortTestRunRequest[options=$options, projectName=$projectName, revision=$revision, testRunId=$testRunId, ]';
  }

  AbortTestRunRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['options'] == null) {
      options = null;
    } else {
          options = json['options'];
    }
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (options != null)
      json['options'] = options;
    if (projectName != null)
      json['projectName'] = projectName;
    if (revision != null)
      json['revision'] = revision;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<AbortTestRunRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<AbortTestRunRequest>() : json.map((value) => AbortTestRunRequest.fromJson(value)).toList();
  }

  static Map<String, AbortTestRunRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AbortTestRunRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AbortTestRunRequest.fromJson(value));
    }
    return map;
  }
}

