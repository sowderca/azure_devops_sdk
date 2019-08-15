part of azure_devops_sdk.api;

class EnvironmentUpdateParameter {
  /* Description of the environment. */
  String description = null;
  /* Name of the environment. */
  String name = null;
  EnvironmentUpdateParameter();

  @override
  String toString() {
    return 'EnvironmentUpdateParameter[description=$description, name=$name, ]';
  }

  EnvironmentUpdateParameter.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<EnvironmentUpdateParameter> listFromJson(List<dynamic> json) {
    return json == null ? List<EnvironmentUpdateParameter>() : json.map((value) => EnvironmentUpdateParameter.fromJson(value)).toList();
  }

  static Map<String, EnvironmentUpdateParameter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EnvironmentUpdateParameter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EnvironmentUpdateParameter.fromJson(value));
    }
    return map;
  }
}

