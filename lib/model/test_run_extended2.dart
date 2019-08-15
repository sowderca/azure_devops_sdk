part of azure_devops_sdk.api;

class TestRunExtended2 {
  
  String autEnvironmentUrl = null;
  
  String csmContent = null;
  
  String csmParameters = null;
  
  String projectId = null;
  
  String sourceFilter = null;
  
  String subscriptionName = null;
  
  String substate = null;
  
  String testCaseFilter = null;
  
  String testEnvironmentUrl = null;
  
  int testRunId = null;
  TestRunExtended2();

  @override
  String toString() {
    return 'TestRunExtended2[autEnvironmentUrl=$autEnvironmentUrl, csmContent=$csmContent, csmParameters=$csmParameters, projectId=$projectId, sourceFilter=$sourceFilter, subscriptionName=$subscriptionName, substate=$substate, testCaseFilter=$testCaseFilter, testEnvironmentUrl=$testEnvironmentUrl, testRunId=$testRunId, ]';
  }

  TestRunExtended2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['autEnvironmentUrl'] == null) {
      autEnvironmentUrl = null;
    } else {
          autEnvironmentUrl = json['autEnvironmentUrl'];
    }
    if (json['csmContent'] == null) {
      csmContent = null;
    } else {
          csmContent = json['csmContent'];
    }
    if (json['csmParameters'] == null) {
      csmParameters = null;
    } else {
          csmParameters = json['csmParameters'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['sourceFilter'] == null) {
      sourceFilter = null;
    } else {
          sourceFilter = json['sourceFilter'];
    }
    if (json['subscriptionName'] == null) {
      subscriptionName = null;
    } else {
          subscriptionName = json['subscriptionName'];
    }
    if (json['substate'] == null) {
      substate = null;
    } else {
          substate = json['substate'];
    }
    if (json['testCaseFilter'] == null) {
      testCaseFilter = null;
    } else {
          testCaseFilter = json['testCaseFilter'];
    }
    if (json['testEnvironmentUrl'] == null) {
      testEnvironmentUrl = null;
    } else {
          testEnvironmentUrl = json['testEnvironmentUrl'];
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (autEnvironmentUrl != null)
      json['autEnvironmentUrl'] = autEnvironmentUrl;
    if (csmContent != null)
      json['csmContent'] = csmContent;
    if (csmParameters != null)
      json['csmParameters'] = csmParameters;
    if (projectId != null)
      json['projectId'] = projectId;
    if (sourceFilter != null)
      json['sourceFilter'] = sourceFilter;
    if (subscriptionName != null)
      json['subscriptionName'] = subscriptionName;
    if (substate != null)
      json['substate'] = substate;
    if (testCaseFilter != null)
      json['testCaseFilter'] = testCaseFilter;
    if (testEnvironmentUrl != null)
      json['testEnvironmentUrl'] = testEnvironmentUrl;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<TestRunExtended2> listFromJson(List<dynamic> json) {
    return json == null ? List<TestRunExtended2>() : json.map((value) => TestRunExtended2.fromJson(value)).toList();
  }

  static Map<String, TestRunExtended2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestRunExtended2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestRunExtended2.fromJson(value));
    }
    return map;
  }
}

