part of azure_devops_sdk.api;

class TestExtensionField {
  
  TestExtensionFieldDetails field = null;
  
  Object value = null;
  TestExtensionField();

  @override
  String toString() {
    return 'TestExtensionField[field=$field, value=$value, ]';
  }

  TestExtensionField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['field'] == null) {
      field = null;
    } else {
      field = TestExtensionFieldDetails.fromJson(json['field']);
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (field != null)
      json['field'] = field;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<TestExtensionField> listFromJson(List<dynamic> json) {
    return json == null ? List<TestExtensionField>() : json.map((value) => TestExtensionField.fromJson(value)).toList();
  }

  static Map<String, TestExtensionField> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestExtensionField>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestExtensionField.fromJson(value));
    }
    return map;
  }
}

