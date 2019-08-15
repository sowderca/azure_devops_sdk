part of azure_devops_sdk.api;

class VariableMultipliersAgentExecutionOptions {
  /* Indicates the type of execution options. */
  int type = null;
  VariableMultipliersAgentExecutionOptions();

  @override
  String toString() {
    return 'VariableMultipliersAgentExecutionOptions[type=$type, ]';
  }

  VariableMultipliersAgentExecutionOptions.fromJson(Map<String, dynamic> json) {
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

  static List<VariableMultipliersAgentExecutionOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<VariableMultipliersAgentExecutionOptions>() : json.map((value) => VariableMultipliersAgentExecutionOptions.fromJson(value)).toList();
  }

  static Map<String, VariableMultipliersAgentExecutionOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VariableMultipliersAgentExecutionOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VariableMultipliersAgentExecutionOptions.fromJson(value));
    }
    return map;
  }
}

