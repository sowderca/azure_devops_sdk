part of azure_devops_sdk.api;

class TestParameter2 {
  
  String actionPath = null;
  
  List<String> actual = [];
  
  DateTime creationDate = null;
  
  String dataType = null;
  
  DateTime dateModified = null;
  
  List<String> expected = [];
  
  int iterationId = null;
  
  String parameterName = null;
  
  int testResultId = null;
  
  int testRunId = null;
  TestParameter2();

  @override
  String toString() {
    return 'TestParameter2[actionPath=$actionPath, actual=$actual, creationDate=$creationDate, dataType=$dataType, dateModified=$dateModified, expected=$expected, iterationId=$iterationId, parameterName=$parameterName, testResultId=$testResultId, testRunId=$testRunId, ]';
  }

  TestParameter2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actionPath'] == null) {
      actionPath = null;
    } else {
          actionPath = json['actionPath'];
    }
    if (json['actual'] == null) {
      actual = null;
    } else {
      actual = (json['actual'] as List).cast<String>();
    }
    if (json['creationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = DateTime.parse(json['creationDate']);
    }
    if (json['dataType'] == null) {
      dataType = null;
    } else {
          dataType = json['dataType'];
    }
    if (json['dateModified'] == null) {
      dateModified = null;
    } else {
      dateModified = DateTime.parse(json['dateModified']);
    }
    if (json['expected'] == null) {
      expected = null;
    } else {
      expected = (json['expected'] as List).cast<String>();
    }
    if (json['iterationId'] == null) {
      iterationId = null;
    } else {
          iterationId = json['iterationId'];
    }
    if (json['parameterName'] == null) {
      parameterName = null;
    } else {
          parameterName = json['parameterName'];
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
    if (actual != null)
      json['actual'] = actual;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (dataType != null)
      json['dataType'] = dataType;
    if (dateModified != null)
      json['dateModified'] = dateModified == null ? null : dateModified.toUtc().toIso8601String();
    if (expected != null)
      json['expected'] = expected;
    if (iterationId != null)
      json['iterationId'] = iterationId;
    if (parameterName != null)
      json['parameterName'] = parameterName;
    if (testResultId != null)
      json['testResultId'] = testResultId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<TestParameter2> listFromJson(List<dynamic> json) {
    return json == null ? List<TestParameter2>() : json.map((value) => TestParameter2.fromJson(value)).toList();
  }

  static Map<String, TestParameter2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestParameter2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestParameter2.fromJson(value));
    }
    return map;
  }
}

