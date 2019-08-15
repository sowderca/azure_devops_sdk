part of azure_devops_sdk.api;

class TestConfigurationCreateUpdateParameters {
  /* Description of the configuration */
  String description = null;
  /* Is the configuration a default for the test plans */
  bool isDefault = null;
  /* Name of the configuration */
  String name = null;
  /* State of the configuration */
  String state = null;
  //enum stateEnum {  active,  inactive,  };{
  /* Dictionary of Test Variable, Selected Value */
  List<NameValuePair> values = [];
  TestConfigurationCreateUpdateParameters();

  @override
  String toString() {
    return 'TestConfigurationCreateUpdateParameters[description=$description, isDefault=$isDefault, name=$name, state=$state, values=$values, ]';
  }

  TestConfigurationCreateUpdateParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['isDefault'] == null) {
      isDefault = null;
    } else {
          isDefault = json['isDefault'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['values'] == null) {
      values = null;
    } else {
      values = NameValuePair.listFromJson(json['values']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (isDefault != null)
      json['isDefault'] = isDefault;
    if (name != null)
      json['name'] = name;
    if (state != null)
      json['state'] = state;
    if (values != null)
      json['values'] = values;
    return json;
  }

  static List<TestConfigurationCreateUpdateParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<TestConfigurationCreateUpdateParameters>() : json.map((value) => TestConfigurationCreateUpdateParameters.fromJson(value)).toList();
  }

  static Map<String, TestConfigurationCreateUpdateParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestConfigurationCreateUpdateParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestConfigurationCreateUpdateParameters.fromJson(value));
    }
    return map;
  }
}

