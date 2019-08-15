part of azure_devops_sdk.api;

class VariableGroupParameters {
  /* Sets description of the variable group. */
  String description = null;
  /* Sets name of the variable group. */
  String name = null;
  /*  */
  Object providerData = null;
  /* Sets type of the variable group. */
  String type = null;
  /* Sets variables contained in the variable group. */
  Map<String, VariableValue> variables = {};
  VariableGroupParameters();

  @override
  String toString() {
    return 'VariableGroupParameters[description=$description, name=$name, providerData=$providerData, type=$type, variables=$variables, ]';
  }

  VariableGroupParameters.fromJson(Map<String, dynamic> json) {
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
    if (json['providerData'] == null) {
      providerData = null;
    } else {
          providerData = json['providerData'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['variables'] == null) {
      variables = null;
    } else {
      variables = VariableValue.mapFromJson(json['variables']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    if (providerData != null)
      json['providerData'] = providerData;
    if (type != null)
      json['type'] = type;
    if (variables != null)
      json['variables'] = variables;
    return json;
  }

  static List<VariableGroupParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<VariableGroupParameters>() : json.map((value) => VariableGroupParameters.fromJson(value)).toList();
  }

  static Map<String, VariableGroupParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VariableGroupParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VariableGroupParameters.fromJson(value));
    }
    return map;
  }
}

