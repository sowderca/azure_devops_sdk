part of azure_devops_sdk.api;

class FieldDetailsForTestResults {
  /* Group by field name */
  String fieldName = null;
  /* Group by field values */
  List<Object> groupsForField = [];
  FieldDetailsForTestResults();

  @override
  String toString() {
    return 'FieldDetailsForTestResults[fieldName=$fieldName, groupsForField=$groupsForField, ]';
  }

  FieldDetailsForTestResults.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['fieldName'] == null) {
      fieldName = null;
    } else {
          fieldName = json['fieldName'];
    }
    if (json['groupsForField'] == null) {
      groupsForField = null;
    } else {
      groupsForField = Object.listFromJson(json['groupsForField']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fieldName != null)
      json['fieldName'] = fieldName;
    if (groupsForField != null)
      json['groupsForField'] = groupsForField;
    return json;
  }

  static List<FieldDetailsForTestResults> listFromJson(List<dynamic> json) {
    return json == null ? List<FieldDetailsForTestResults>() : json.map((value) => FieldDetailsForTestResults.fromJson(value)).toList();
  }

  static Map<String, FieldDetailsForTestResults> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FieldDetailsForTestResults>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FieldDetailsForTestResults.fromJson(value));
    }
    return map;
  }
}

