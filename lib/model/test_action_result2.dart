part of azure_devops_sdk.api;

class TestActionResult2 {
  
  String actionPath = null;
  
  String comment = null;
  
  DateTime creationDate = null;
  
  DateTime dateCompleted = null;
  
  DateTime dateStarted = null;
  
  int duration = null;
  
  String errorMessage = null;
  
  int iterationId = null;
  
  DateTime lastUpdated = null;
  
  String outcome = null;
  
  int sharedStepId = null;
  
  int sharedStepRevision = null;
  
  int testResultId = null;
  
  int testRunId = null;
  TestActionResult2();

  @override
  String toString() {
    return 'TestActionResult2[actionPath=$actionPath, comment=$comment, creationDate=$creationDate, dateCompleted=$dateCompleted, dateStarted=$dateStarted, duration=$duration, errorMessage=$errorMessage, iterationId=$iterationId, lastUpdated=$lastUpdated, outcome=$outcome, sharedStepId=$sharedStepId, sharedStepRevision=$sharedStepRevision, testResultId=$testResultId, testRunId=$testRunId, ]';
  }

  TestActionResult2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actionPath'] == null) {
      actionPath = null;
    } else {
          actionPath = json['actionPath'];
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
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
    if (json['duration'] == null) {
      duration = null;
    } else {
          duration = json['duration'];
    }
    if (json['errorMessage'] == null) {
      errorMessage = null;
    } else {
          errorMessage = json['errorMessage'];
    }
    if (json['iterationId'] == null) {
      iterationId = null;
    } else {
          iterationId = json['iterationId'];
    }
    if (json['lastUpdated'] == null) {
      lastUpdated = null;
    } else {
      lastUpdated = DateTime.parse(json['lastUpdated']);
    }
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
    }
    if (json['sharedStepId'] == null) {
      sharedStepId = null;
    } else {
          sharedStepId = json['sharedStepId'];
    }
    if (json['sharedStepRevision'] == null) {
      sharedStepRevision = null;
    } else {
          sharedStepRevision = json['sharedStepRevision'];
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
    if (actionPath != null)
      json['actionPath'] = actionPath;
    if (comment != null)
      json['comment'] = comment;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (dateCompleted != null)
      json['dateCompleted'] = dateCompleted == null ? null : dateCompleted.toUtc().toIso8601String();
    if (dateStarted != null)
      json['dateStarted'] = dateStarted == null ? null : dateStarted.toUtc().toIso8601String();
    if (duration != null)
      json['duration'] = duration;
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (iterationId != null)
      json['iterationId'] = iterationId;
    if (lastUpdated != null)
      json['lastUpdated'] = lastUpdated == null ? null : lastUpdated.toUtc().toIso8601String();
    if (outcome != null)
      json['outcome'] = outcome;
    if (sharedStepId != null)
      json['sharedStepId'] = sharedStepId;
    if (sharedStepRevision != null)
      json['sharedStepRevision'] = sharedStepRevision;
    if (testResultId != null)
      json['testResultId'] = testResultId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<TestActionResult2> listFromJson(List<dynamic> json) {
    return json == null ? List<TestActionResult2>() : json.map((value) => TestActionResult2.fromJson(value)).toList();
  }

  static Map<String, TestActionResult2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestActionResult2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestActionResult2.fromJson(value));
    }
    return map;
  }
}

