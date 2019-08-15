part of azure_devops_sdk.api;

class TestResultAttachment {
  
  String actionPath = null;
  
  String attachmentType = null;
  //enum attachmentTypeEnum {  generalAttachment,  codeCoverage,  consoleLog,  };{
  
  String comment = null;
  
  DateTime creationDate = null;
  
  String downloadQueryString = null;
  
  String fileName = null;
  
  int id = null;
  
  bool isComplete = null;
  
  int iterationId = null;
  
  int length = null;
  
  int sessionId = null;
  
  int testResultId = null;
  
  int testRunId = null;
  
  String tmiRunId = null;
  TestResultAttachment();

  @override
  String toString() {
    return 'TestResultAttachment[actionPath=$actionPath, attachmentType=$attachmentType, comment=$comment, creationDate=$creationDate, downloadQueryString=$downloadQueryString, fileName=$fileName, id=$id, isComplete=$isComplete, iterationId=$iterationId, length=$length, sessionId=$sessionId, testResultId=$testResultId, testRunId=$testRunId, tmiRunId=$tmiRunId, ]';
  }

  TestResultAttachment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actionPath'] == null) {
      actionPath = null;
    } else {
          actionPath = json['actionPath'];
    }
    if (json['attachmentType'] == null) {
      attachmentType = null;
    } else {
          attachmentType = json['attachmentType'];
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
    if (json['downloadQueryString'] == null) {
      downloadQueryString = null;
    } else {
          downloadQueryString = json['downloadQueryString'];
    }
    if (json['fileName'] == null) {
      fileName = null;
    } else {
          fileName = json['fileName'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isComplete'] == null) {
      isComplete = null;
    } else {
          isComplete = json['isComplete'];
    }
    if (json['iterationId'] == null) {
      iterationId = null;
    } else {
          iterationId = json['iterationId'];
    }
    if (json['length'] == null) {
      length = null;
    } else {
          length = json['length'];
    }
    if (json['sessionId'] == null) {
      sessionId = null;
    } else {
          sessionId = json['sessionId'];
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
    if (json['tmiRunId'] == null) {
      tmiRunId = null;
    } else {
          tmiRunId = json['tmiRunId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actionPath != null)
      json['actionPath'] = actionPath;
    if (attachmentType != null)
      json['attachmentType'] = attachmentType;
    if (comment != null)
      json['comment'] = comment;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (downloadQueryString != null)
      json['downloadQueryString'] = downloadQueryString;
    if (fileName != null)
      json['fileName'] = fileName;
    if (id != null)
      json['id'] = id;
    if (isComplete != null)
      json['isComplete'] = isComplete;
    if (iterationId != null)
      json['iterationId'] = iterationId;
    if (length != null)
      json['length'] = length;
    if (sessionId != null)
      json['sessionId'] = sessionId;
    if (testResultId != null)
      json['testResultId'] = testResultId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    if (tmiRunId != null)
      json['tmiRunId'] = tmiRunId;
    return json;
  }

  static List<TestResultAttachment> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultAttachment>() : json.map((value) => TestResultAttachment.fromJson(value)).toList();
  }

  static Map<String, TestResultAttachment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultAttachment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultAttachment.fromJson(value));
    }
    return map;
  }
}

