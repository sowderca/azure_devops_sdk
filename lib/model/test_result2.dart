part of azure_devops_sdk.api;

class TestResult2 {
  
  int afnStripId = null;
  
  String computerName = null;
  
  DateTime creationDate = null;
  
  DateTime dateCompleted = null;
  
  DateTime dateStarted = null;
  
  String effectivePointState = null;
  
  String failureType = null;
  
  DateTime lastUpdated = null;
  
  String lastUpdatedBy = null;
  
  String outcome = null;
  
  String owner = null;
  
  String projectId = null;
  
  int resetCount = null;
  
  int resolutionStateId = null;
  
  int revision = null;
  
  String runBy = null;
  
  String state = null;
  
  int testCaseRefId = null;
  
  int testResultId = null;
  
  int testRunId = null;
  TestResult2();

  @override
  String toString() {
    return 'TestResult2[afnStripId=$afnStripId, computerName=$computerName, creationDate=$creationDate, dateCompleted=$dateCompleted, dateStarted=$dateStarted, effectivePointState=$effectivePointState, failureType=$failureType, lastUpdated=$lastUpdated, lastUpdatedBy=$lastUpdatedBy, outcome=$outcome, owner=$owner, projectId=$projectId, resetCount=$resetCount, resolutionStateId=$resolutionStateId, revision=$revision, runBy=$runBy, state=$state, testCaseRefId=$testCaseRefId, testResultId=$testResultId, testRunId=$testRunId, ]';
  }

  TestResult2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['afnStripId'] == null) {
      afnStripId = null;
    } else {
          afnStripId = json['afnStripId'];
    }
    if (json['computerName'] == null) {
      computerName = null;
    } else {
          computerName = json['computerName'];
    }
    if (json['creationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = DateTime.parse(json['creationDate']);
    }
    if (json['dateCompleted'] == null) {
      dateCompleted = null;
    } else {
      dateCompleted = DateTime.parse(json['dateCompleted']);
    }
    if (json['dateStarted'] == null) {
      dateStarted = null;
    } else {
      dateStarted = DateTime.parse(json['dateStarted']);
    }
    if (json['effectivePointState'] == null) {
      effectivePointState = null;
    } else {
          effectivePointState = json['effectivePointState'];
    }
    if (json['failureType'] == null) {
      failureType = null;
    } else {
          failureType = json['failureType'];
    }
    if (json['lastUpdated'] == null) {
      lastUpdated = null;
    } else {
      lastUpdated = DateTime.parse(json['lastUpdated']);
    }
    if (json['lastUpdatedBy'] == null) {
      lastUpdatedBy = null;
    } else {
          lastUpdatedBy = json['lastUpdatedBy'];
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
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['resetCount'] == null) {
      resetCount = null;
    } else {
          resetCount = json['resetCount'];
    }
    if (json['resolutionStateId'] == null) {
      resolutionStateId = null;
    } else {
          resolutionStateId = json['resolutionStateId'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['runBy'] == null) {
      runBy = null;
    } else {
          runBy = json['runBy'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['testCaseRefId'] == null) {
      testCaseRefId = null;
    } else {
          testCaseRefId = json['testCaseRefId'];
    }
    if (json['testResultId'] == null) {
      testResultId = null;
    } else {
          testResultId = json['testResultId'];
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (afnStripId != null)
      json['afnStripId'] = afnStripId;
    if (computerName != null)
      json['computerName'] = computerName;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (dateCompleted != null)
      json['dateCompleted'] = dateCompleted == null ? null : dateCompleted.toUtc().toIso8601String();
    if (dateStarted != null)
      json['dateStarted'] = dateStarted == null ? null : dateStarted.toUtc().toIso8601String();
    if (effectivePointState != null)
      json['effectivePointState'] = effectivePointState;
    if (failureType != null)
      json['failureType'] = failureType;
    if (lastUpdated != null)
      json['lastUpdated'] = lastUpdated == null ? null : lastUpdated.toUtc().toIso8601String();
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (outcome != null)
      json['outcome'] = outcome;
    if (owner != null)
      json['owner'] = owner;
    if (projectId != null)
      json['projectId'] = projectId;
    if (resetCount != null)
      json['resetCount'] = resetCount;
    if (resolutionStateId != null)
      json['resolutionStateId'] = resolutionStateId;
    if (revision != null)
      json['revision'] = revision;
    if (runBy != null)
      json['runBy'] = runBy;
    if (state != null)
      json['state'] = state;
    if (testCaseRefId != null)
      json['testCaseRefId'] = testCaseRefId;
    if (testResultId != null)
      json['testResultId'] = testResultId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<TestResult2> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResult2>() : json.map((value) => TestResult2.fromJson(value)).toList();
  }

  static Map<String, TestResult2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResult2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResult2.fromJson(value));
    }
    return map;
  }
}

