part of azure_devops_sdk.api;

class TestResultReset2 {
  
  String auditIdentity = null;
  
  DateTime dateModified = null;
  
  String projectId = null;
  
  int revision = null;
  
  int testResultId = null;
  
  List<String> testResultRV = [];
  
  int testRunId = null;
  TestResultReset2();

  @override
  String toString() {
    return 'TestResultReset2[auditIdentity=$auditIdentity, dateModified=$dateModified, projectId=$projectId, revision=$revision, testResultId=$testResultId, testResultRV=$testResultRV, testRunId=$testRunId, ]';
  }

  TestResultReset2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['auditIdentity'] == null) {
      auditIdentity = null;
    } else {
          auditIdentity = json['auditIdentity'];
    }
    if (json['dateModified'] == null) {
      dateModified = null;
    } else {
      dateModified = DateTime.parse(json['dateModified']);
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['testResultId'] == null) {
      testResultId = null;
    } else {
          testResultId = json['testResultId'];
    }
    if (json['testResultRV'] == null) {
      testResultRV = null;
    } else {
      testResultRV = (json['testResultRV'] as List).cast<String>();
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (auditIdentity != null)
      json['auditIdentity'] = auditIdentity;
    if (dateModified != null)
      json['dateModified'] = dateModified == null ? null : dateModified.toUtc().toIso8601String();
    if (projectId != null)
      json['projectId'] = projectId;
    if (revision != null)
      json['revision'] = revision;
    if (testResultId != null)
      json['testResultId'] = testResultId;
    if (testResultRV != null)
      json['testResultRV'] = testResultRV;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<TestResultReset2> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultReset2>() : json.map((value) => TestResultReset2.fromJson(value)).toList();
  }

  static Map<String, TestResultReset2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultReset2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultReset2.fromJson(value));
    }
    return map;
  }
}

