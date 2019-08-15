part of azure_devops_sdk.api;

class TestPoint {
  
  IdentityRef assignedTo = null;
  /* Automated. */
  bool automated = null;
  /* Comment associated with test point. */
  String comment = null;
  
  ShallowReference configuration = null;
  /* Failure type of test point. */
  String failureType = null;
  /* ID of the test point. */
  int id = null;
  /* Last date when test point was reset to Active. */
  DateTime lastResetToActive = null;
  /* Last resolution state id of test point. */
  int lastResolutionStateId = null;
  
  ShallowReference lastResult = null;
  
  LastResultDetails lastResultDetails = null;
  /* Last result state of test point. */
  String lastResultState = null;
  /* LastRun build number of test point. */
  String lastRunBuildNumber = null;
  
  ShallowReference lastTestRun = null;
  
  IdentityRef lastUpdatedBy = null;
  /* Last updated date of test point. */
  DateTime lastUpdatedDate = null;
  /* Outcome of test point. */
  String outcome = null;
  /* Revision number. */
  int revision = null;
  /* State of test point. */
  String state = null;
  
  ShallowReference suite = null;
  
  WorkItemReference testCase = null;
  
  ShallowReference testPlan = null;
  /* Test point Url. */
  String url = null;
  /* Work item properties of test point. */
  List<Object> workItemProperties = [];
  TestPoint();

  @override
  String toString() {
    return 'TestPoint[assignedTo=$assignedTo, automated=$automated, comment=$comment, configuration=$configuration, failureType=$failureType, id=$id, lastResetToActive=$lastResetToActive, lastResolutionStateId=$lastResolutionStateId, lastResult=$lastResult, lastResultDetails=$lastResultDetails, lastResultState=$lastResultState, lastRunBuildNumber=$lastRunBuildNumber, lastTestRun=$lastTestRun, lastUpdatedBy=$lastUpdatedBy, lastUpdatedDate=$lastUpdatedDate, outcome=$outcome, revision=$revision, state=$state, suite=$suite, testCase=$testCase, testPlan=$testPlan, url=$url, workItemProperties=$workItemProperties, ]';
  }

  TestPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['assignedTo'] == null) {
      assignedTo = null;
    } else {
      assignedTo = IdentityRef.fromJson(json['assignedTo']);
    }
    if (json['automated'] == null) {
      automated = null;
    } else {
          automated = json['automated'];
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['configuration'] == null) {
      configuration = null;
    } else {
      configuration = ShallowReference.fromJson(json['configuration']);
    }
    if (json['failureType'] == null) {
      failureType = null;
    } else {
          failureType = json['failureType'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['lastResetToActive'] == null) {
      lastResetToActive = null;
    } else {
      lastResetToActive = DateTime.parse(json['lastResetToActive']);
    }
    if (json['lastResolutionStateId'] == null) {
      lastResolutionStateId = null;
    } else {
          lastResolutionStateId = json['lastResolutionStateId'];
    }
    if (json['lastResult'] == null) {
      lastResult = null;
    } else {
      lastResult = ShallowReference.fromJson(json['lastResult']);
    }
    if (json['lastResultDetails'] == null) {
      lastResultDetails = null;
    } else {
      lastResultDetails = LastResultDetails.fromJson(json['lastResultDetails']);
    }
    if (json['lastResultState'] == null) {
      lastResultState = null;
    } else {
          lastResultState = json['lastResultState'];
    }
    if (json['lastRunBuildNumber'] == null) {
      lastRunBuildNumber = null;
    } else {
          lastRunBuildNumber = json['lastRunBuildNumber'];
    }
    if (json['lastTestRun'] == null) {
      lastTestRun = null;
    } else {
      lastTestRun = ShallowReference.fromJson(json['lastTestRun']);
    }
    if (json['lastUpdatedBy'] == null) {
      lastUpdatedBy = null;
    } else {
      lastUpdatedBy = IdentityRef.fromJson(json['lastUpdatedBy']);
    }
    if (json['lastUpdatedDate'] == null) {
      lastUpdatedDate = null;
    } else {
      lastUpdatedDate = DateTime.parse(json['lastUpdatedDate']);
    }
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['suite'] == null) {
      suite = null;
    } else {
      suite = ShallowReference.fromJson(json['suite']);
    }
    if (json['testCase'] == null) {
      testCase = null;
    } else {
      testCase = WorkItemReference.fromJson(json['testCase']);
    }
    if (json['testPlan'] == null) {
      testPlan = null;
    } else {
      testPlan = ShallowReference.fromJson(json['testPlan']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['workItemProperties'] == null) {
      workItemProperties = null;
    } else {
      workItemProperties = Object.listFromJson(json['workItemProperties']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assignedTo != null)
      json['assignedTo'] = assignedTo;
    if (automated != null)
      json['automated'] = automated;
    if (comment != null)
      json['comment'] = comment;
    if (configuration != null)
      json['configuration'] = configuration;
    if (failureType != null)
      json['failureType'] = failureType;
    if (id != null)
      json['id'] = id;
    if (lastResetToActive != null)
      json['lastResetToActive'] = lastResetToActive == null ? null : lastResetToActive.toUtc().toIso8601String();
    if (lastResolutionStateId != null)
      json['lastResolutionStateId'] = lastResolutionStateId;
    if (lastResult != null)
      json['lastResult'] = lastResult;
    if (lastResultDetails != null)
      json['lastResultDetails'] = lastResultDetails;
    if (lastResultState != null)
      json['lastResultState'] = lastResultState;
    if (lastRunBuildNumber != null)
      json['lastRunBuildNumber'] = lastRunBuildNumber;
    if (lastTestRun != null)
      json['lastTestRun'] = lastTestRun;
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (lastUpdatedDate != null)
      json['lastUpdatedDate'] = lastUpdatedDate == null ? null : lastUpdatedDate.toUtc().toIso8601String();
    if (outcome != null)
      json['outcome'] = outcome;
    if (revision != null)
      json['revision'] = revision;
    if (state != null)
      json['state'] = state;
    if (suite != null)
      json['suite'] = suite;
    if (testCase != null)
      json['testCase'] = testCase;
    if (testPlan != null)
      json['testPlan'] = testPlan;
    if (url != null)
      json['url'] = url;
    if (workItemProperties != null)
      json['workItemProperties'] = workItemProperties;
    return json;
  }

  static List<TestPoint> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPoint>() : json.map((value) => TestPoint.fromJson(value)).toList();
  }

  static Map<String, TestPoint> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPoint.fromJson(value));
    }
    return map;
  }
}

