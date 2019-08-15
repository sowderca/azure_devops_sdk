part of azure_devops_sdk.api;

class CustomTestField {
  /* Field Name. */
  String fieldName = null;
  /* Field value. */
  Object value = null;
  CustomTestField();

  @override
  String toString() {
    return 'CustomTestField[fieldName=$fieldName, value=$value, ]';
  }

  CustomTestField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['fieldName'] == null) {
      fieldName = null;
    } else {
          fieldName = json['fieldName'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fieldName != null)
      json['fieldName'] = fieldName;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<CustomTestField> listFromJson(List<dynamic> json) {
    return json == null ? List<CustomTestField>() : json.map((value) => CustomTestField.fromJson(value)).toList();
  }

  static Map<String, CustomTestField> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CustomTestField>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CustomTestField.fromJson(value));
    }
    return map;
  }
}

