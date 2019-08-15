part of azure_devops_sdk.api;

class DockerProcessTarget {
  
  AgentSpecification agentSpecification = null;
  DockerProcessTarget();

  @override
  String toString() {
    return 'DockerProcessTarget[agentSpecification=$agentSpecification, ]';
  }

  DockerProcessTarget.fromJson(Map<String, dynamic> json) {
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

  static List<DockerProcessTarget> listFromJson(List<dynamic> json) {
    return json == null ? List<DockerProcessTarget>() : json.map((value) => DockerProcessTarget.fromJson(value)).toList();
  }

  static Map<String, DockerProcessTarget> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DockerProcessTarget>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DockerProcessTarget.fromJson(value));
    }
    return map;
  }
}

