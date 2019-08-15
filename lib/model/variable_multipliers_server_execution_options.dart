part of azure_devops_sdk.api;

class VariableMultipliersServerExecutionOptions {
  /* The type. */
  int type = null;
  VariableMultipliersServerExecutionOptions();

  @override
  String toString() {
    return 'VariableMultipliersServerExecutionOptions[type=$type, ]';
  }

  VariableMultipliersServerExecutionOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<VariableMultipliersServerExecutionOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<VariableMultipliersServerExecutionOptions>() : json.map((value) => VariableMultipliersServerExecutionOptions.fromJson(value)).toList();
  }

  static Map<String, VariableMultipliersServerExecutionOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VariableMultipliersServerExecutionOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VariableMultipliersServerExecutionOptions.fromJson(value));
    }
    return map;
  }
}

