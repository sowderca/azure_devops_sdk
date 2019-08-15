part of azure_devops_sdk.api;

class TestVariableCreateUpdateParameters {
  /* Description of the test variable */
  String description = null;
  /* Name of the test variable */
  String name = null;
  /* List of allowed values */
  List<String> values = [];
  TestVariableCreateUpdateParameters();

  @override
  String toString() {
    return 'TestVariableCreateUpdateParameters[description=$description, name=$name, values=$values, ]';
  }

  TestVariableCreateUpdateParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['values'] == null) {
      values = null;
    } else {
      values = (json['values'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    if (values != null)
      json['values'] = values;
    return json;
  }

  static List<TestVariableCreateUpdateParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<TestVariableCreateUpdateParameters>() : json.map((value) => TestVariableCreateUpdateParameters.fromJson(value)).toList();
  }

  static Map<String, TestVariableCreateUpdateParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestVariableCreateUpdateParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestVariableCreateUpdateParameters.fromJson(value));
    }
    return map;
  }
}

