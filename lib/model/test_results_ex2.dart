part of azure_devops_sdk.api;

class TestResultsEx2 {
  
  bool bitValue = null;
  
  DateTime creationDate = null;
  
  DateTime dateTimeValue = null;
  
  int fieldId = null;
  
  String fieldName = null;
  
  double floatValue = null;
  
  String guidValue = null;
  
  int intValue = null;
  
  String projectId = null;
  
  String stringValue = null;
  
  int testResultId = null;
  
  int testRunId = null;
  TestResultsEx2();

  @override
  String toString() {
    return 'TestResultsEx2[bitValue=$bitValue, creationDate=$creationDate, dateTimeValue=$dateTimeValue, fieldId=$fieldId, fieldName=$fieldName, floatValue=$floatValue, guidValue=$guidValue, intValue=$intValue, projectId=$projectId, stringValue=$stringValue, testResultId=$testResultId, testRunId=$testRunId, ]';
  }

  TestResultsEx2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['bitValue'] == null) {
      bitValue = null;
    } else {
          bitValue = json['bitValue'];
    }
    if (json['creationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = DateTime.parse(json['creationDate']);
    }
    if (json['dateTimeValue'] == null) {
      dateTimeValue = null;
    } else {
      dateTimeValue = DateTime.parse(json['dateTimeValue']);
    }
    if (json['fieldId'] == null) {
      fieldId = null;
    } else {
          fieldId = json['fieldId'];
    }
    if (json['fieldName'] == null) {
      fieldName = null;
    } else {
          fieldName = json['fieldName'];
    }
    if (json['floatValue'] == null) {
      floatValue = null;
    } else {
          floatValue = json['floatValue'].toDouble();
    }
    if (json['guidValue'] == null) {
      guidValue = null;
    } else {
          guidValue = json['guidValue'];
    }
    if (json['intValue'] == null) {
      intValue = null;
    } else {
          intValue = json['intValue'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['stringValue'] == null) {
      stringValue = null;
    } else {
          stringValue = json['stringValue'];
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
    if (bitValue != null)
      json['bitValue'] = bitValue;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (dateTimeValue != null)
      json['dateTimeValue'] = dateTimeValue == null ? null : dateTimeValue.toUtc().toIso8601String();
    if (fieldId != null)
      json['fieldId'] = fieldId;
    if (fieldName != null)
      json['fieldName'] = fieldName;
    if (floatValue != null)
      json['floatValue'] = floatValue;
    if (guidValue != null)
      json['guidValue'] = guidValue;
    if (intValue != null)
      json['intValue'] = intValue;
    if (projectId != null)
      json['projectId'] = projectId;
    if (stringValue != null)
      json['stringValue'] = stringValue;
    if (testResultId != null)
      json['testResultId'] = testResultId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<TestResultsEx2> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultsEx2>() : json.map((value) => TestResultsEx2.fromJson(value)).toList();
  }

  static Map<String, TestResultsEx2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultsEx2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultsEx2.fromJson(value));
    }
    return map;
  }
}

