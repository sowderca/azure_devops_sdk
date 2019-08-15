part of azure_devops_sdk.api;

class TestActionResult {
  
  String actionPath = null;
  
  String comment = null;
  
  DateTime creationDate = null;
  
  DateTime dateCompleted = null;
  
  DateTime dateStarted = null;
  
  int duration = null;
  
  String errorMessage = null;
  
  LegacyTestCaseResultIdentifier id = null;
  
  int iterationId = null;
  
  DateTime lastUpdated = null;
  
  String lastUpdatedBy = null;
  
  String outcome = null;
  
  int sharedStepId = null;
  
  int sharedStepRevision = null;
  TestActionResult();

  @override
  String toString() {
    return 'TestActionResult[actionPath=$actionPath, comment=$comment, creationDate=$creationDate, dateCompleted=$dateCompleted, dateStarted=$dateStarted, duration=$duration, errorMessage=$errorMessage, id=$id, iterationId=$iterationId, lastUpdated=$lastUpdated, lastUpdatedBy=$lastUpdatedBy, outcome=$outcome, sharedStepId=$sharedStepId, sharedStepRevision=$sharedStepRevision, ]';
  }

  TestActionResult.fromJson(Map<String, dynamic> json) {
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
    if (json['id'] == null) {
      id = null;
    } else {
      id = LegacyTestCaseResultIdentifier.fromJson(json['id']);
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
    if (id != null)
      json['id'] = id;
    if (iterationId != null)
      json['iterationId'] = iterationId;
    if (lastUpdated != null)
      json['lastUpdated'] = lastUpdated == null ? null : lastUpdated.toUtc().toIso8601String();
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (outcome != null)
      json['outcome'] = outcome;
    if (sharedStepId != null)
      json['sharedStepId'] = sharedStepId;
    if (sharedStepRevision != null)
      json['sharedStepRevision'] = sharedStepRevision;
    return json;
  }

  static List<TestActionResult> listFromJson(List<dynamic> json) {
    return json == null ? List<TestActionResult>() : json.map((value) => TestActionResult.fromJson(value)).toList();
  }

  static Map<String, TestActionResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestActionResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestActionResult.fromJson(value));
    }
    return map;
  }
}

