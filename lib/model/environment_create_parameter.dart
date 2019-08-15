part of azure_devops_sdk.api;

class EnvironmentCreateParameter {
  /* Description of the environment. */
  String description = null;
  /* Name of the environment. */
  String name = null;
  EnvironmentCreateParameter();

  @override
  String toString() {
    return 'EnvironmentCreateParameter[description=$description, name=$name, ]';
  }

  EnvironmentCreateParameter.fromJson(Map<String, dynamic> json) {
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

  static List<EnvironmentCreateParameter> listFromJson(List<dynamic> json) {
    return json == null ? List<EnvironmentCreateParameter>() : json.map((value) => EnvironmentCreateParameter.fromJson(value)).toList();
  }

  static Map<String, EnvironmentCreateParameter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EnvironmentCreateParameter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EnvironmentCreateParameter.fromJson(value));
    }
    return map;
  }
}

