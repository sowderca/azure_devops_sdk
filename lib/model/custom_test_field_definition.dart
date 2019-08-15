part of azure_devops_sdk.api;

class CustomTestFieldDefinition {
  
  int fieldId = null;
  
  String fieldName = null;
  
  String fieldType = null;
  //enum fieldTypeEnum {  bit,  dateTime,  int,  float,  string,  guid,  };{
  
  String scope = null;
  //enum scopeEnum {  none,  testRun,  testResult,  system,  all,  };{
  CustomTestFieldDefinition();

  @override
  String toString() {
    return 'CustomTestFieldDefinition[fieldId=$fieldId, fieldName=$fieldName, fieldType=$fieldType, scope=$scope, ]';
  }

  CustomTestFieldDefinition.fromJson(Map<String, dynamic> json) {
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
    if (json['scope'] == null) {
      scope = null;
    } else {
          scope = json['scope'];
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
    if (scope != null)
      json['scope'] = scope;
    return json;
  }

  static List<CustomTestFieldDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<CustomTestFieldDefinition>() : json.map((value) => CustomTestFieldDefinition.fromJson(value)).toList();
  }

  static Map<String, CustomTestFieldDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CustomTestFieldDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CustomTestFieldDefinition.fromJson(value));
    }
    return map;
  }
}

