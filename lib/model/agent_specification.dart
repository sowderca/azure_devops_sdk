part of azure_devops_sdk.api;

class AgentSpecification {
  /* Agent specification unique identifier. */
  String identifier = null;
  AgentSpecification();

  @override
  String toString() {
    return 'AgentSpecification[identifier=$identifier, ]';
  }

  AgentSpecification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['identifier'] == null) {
      identifier = null;
    } else {
          identifier = json['identifier'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (identifier != null)
      json['identifier'] = identifier;
    return json;
  }

  static List<AgentSpecification> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentSpecification>() : json.map((value) => AgentSpecification.fromJson(value)).toList();
  }

  static Map<String, AgentSpecification> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentSpecification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentSpecification.fromJson(value));
    }
    return map;
  }
}

