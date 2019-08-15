part of azure_devops_sdk.api;

class TestRunContext2 {
  
  int buildRefId = null;
  
  String projectId = null;
  
  int releaseRefId = null;
  
  String sourceWorkflow = null;
  
  int testRunContextId = null;
  TestRunContext2();

  @override
  String toString() {
    return 'TestRunContext2[buildRefId=$buildRefId, projectId=$projectId, releaseRefId=$releaseRefId, sourceWorkflow=$sourceWorkflow, testRunContextId=$testRunContextId, ]';
  }

  TestRunContext2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['buildRefId'] == null) {
      buildRefId = null;
    } else {
          buildRefId = json['buildRefId'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['releaseRefId'] == null) {
      releaseRefId = null;
    } else {
          releaseRefId = json['releaseRefId'];
    }
    if (json['sourceWorkflow'] == null) {
      sourceWorkflow = null;
    } else {
          sourceWorkflow = json['sourceWorkflow'];
    }
    if (json['testRunContextId'] == null) {
      testRunContextId = null;
    } else {
          testRunContextId = json['testRunContextId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (buildRefId != null)
      json['buildRefId'] = buildRefId;
    if (projectId != null)
      json['projectId'] = projectId;
    if (releaseRefId != null)
      json['releaseRefId'] = releaseRefId;
    if (sourceWorkflow != null)
      json['sourceWorkflow'] = sourceWorkflow;
    if (testRunContextId != null)
      json['testRunContextId'] = testRunContextId;
    return json;
  }

  static List<TestRunContext2> listFromJson(List<dynamic> json) {
    return json == null ? List<TestRunContext2>() : json.map((value) => TestRunContext2.fromJson(value)).toList();
  }

  static Map<String, TestRunContext2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestRunContext2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestRunContext2.fromJson(value));
    }
    return map;
  }
}

