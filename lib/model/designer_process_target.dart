part of azure_devops_sdk.api;

class DesignerProcessTarget {
  
  AgentSpecification agentSpecification = null;
  DesignerProcessTarget();

  @override
  String toString() {
    return 'DesignerProcessTarget[agentSpecification=$agentSpecification, ]';
  }

  DesignerProcessTarget.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agentSpecification'] == null) {
      agentSpecification = null;
    } else {
      agentSpecification = AgentSpecification.fromJson(json['agentSpecification']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agentSpecification != null)
      json['agentSpecification'] = agentSpecification;
    return json;
  }

  static List<DesignerProcessTarget> listFromJson(List<dynamic> json) {
    return json == null ? List<DesignerProcessTarget>() : json.map((value) => DesignerProcessTarget.fromJson(value)).toList();
  }

  static Map<String, DesignerProcessTarget> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DesignerProcessTarget>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DesignerProcessTarget.fromJson(value));
    }
    return map;
  }
}

