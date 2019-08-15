part of azure_devops_sdk.api;

class TestFieldsEx2 {
  
  int fieldId = null;
  
  String fieldName = null;
  
  String fieldType = null;
  
  bool isResultScoped = null;
  
  bool isRunScoped = null;
  
  bool isSystemField = null;
  
  String projectId = null;
  TestFieldsEx2();

  @override
  String toString() {
    return 'TestFieldsEx2[fieldId=$fieldId, fieldName=$fieldName, fieldType=$fieldType, isResultScoped=$isResultScoped, isRunScoped=$isRunScoped, isSystemField=$isSystemField, projectId=$projectId, ]';
  }

  TestFieldsEx2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['fieldType'] == null) {
      fieldType = null;
    } else {
          fieldType = json['fieldType'];
    }
    if (json['isResultScoped'] == null) {
      isResultScoped = null;
    } else {
          isResultScoped = json['isResultScoped'];
    }
    if (json['isRunScoped'] == null) {
      isRunScoped = null;
    } else {
          isRunScoped = json['isRunScoped'];
    }
    if (json['isSystemField'] == null) {
      isSystemField = null;
    } else {
          isSystemField = json['isSystemField'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fieldId != null)
      json['fieldId'] = fieldId;
    if (fieldName != null)
      json['fieldName'] = fieldName;
    if (fieldType != null)
      json['fieldType'] = fieldType;
    if (isResultScoped != null)
      json['isResultScoped'] = isResultScoped;
    if (isRunScoped != null)
      json['isRunScoped'] = isRunScoped;
    if (isSystemField != null)
      json['isSystemField'] = isSystemField;
    if (projectId != null)
      json['projectId'] = projectId;
    return json;
  }

  static List<TestFieldsEx2> listFromJson(List<dynamic> json) {
    return json == null ? List<TestFieldsEx2>() : json.map((value) => TestFieldsEx2.fromJson(value)).toList();
  }

  static Map<String, TestFieldsEx2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestFieldsEx2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestFieldsEx2.fromJson(value));
    }
    return map;
  }
}

