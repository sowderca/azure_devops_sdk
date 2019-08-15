part of azure_devops_sdk.api;

class AgentPoolQueueReference {
  /* An alias to be used when referencing the resource. */
  String alias = null;
  AgentPoolQueueReference();

  @override
  String toString() {
    return 'AgentPoolQueueReference[alias=$alias, ]';
  }

  AgentPoolQueueReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['alias'] == null) {
      alias = null;
    } else {
          alias = json['alias'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (alias != null)
      json['alias'] = alias;
    return json;
  }

  static List<AgentPoolQueueReference> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentPoolQueueReference>() : json.map((value) => AgentPoolQueueReference.fromJson(value)).toList();
  }

  static Map<String, AgentPoolQueueReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentPoolQueueReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentPoolQueueReference.fromJson(value));
    }
    return map;
  }
}

