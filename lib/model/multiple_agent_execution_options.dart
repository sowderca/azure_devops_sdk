part of azure_devops_sdk.api;

class MultipleAgentExecutionOptions {
  /* Indicates the type of execution options. */
  int type = null;
  MultipleAgentExecutionOptions();

  @override
  String toString() {
    return 'MultipleAgentExecutionOptions[type=$type, ]';
  }

  MultipleAgentExecutionOptions.fromJson(Map<String, dynamic> json) {
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

  static List<MultipleAgentExecutionOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<MultipleAgentExecutionOptions>() : json.map((value) => MultipleAgentExecutionOptions.fromJson(value)).toList();
  }

  static Map<String, MultipleAgentExecutionOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MultipleAgentExecutionOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MultipleAgentExecutionOptions.fromJson(value));
    }
    return map;
  }
}

