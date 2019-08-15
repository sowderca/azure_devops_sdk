part of azure_devops_sdk.api;

class AgentRefreshMessage {
  
  int agentId = null;
  
  String targetVersion = null;
  
  String timeout = null;
  AgentRefreshMessage();

  @override
  String toString() {
    return 'AgentRefreshMessage[agentId=$agentId, targetVersion=$targetVersion, timeout=$timeout, ]';
  }

  AgentRefreshMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agentId'] == null) {
      agentId = null;
    } else {
          agentId = json['agentId'];
    }
    if (json['targetVersion'] == null) {
      targetVersion = null;
    } else {
          targetVersion = json['targetVersion'];
    }
    if (json['timeout'] == null) {
      timeout = null;
    } else {
          timeout = json['timeout'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agentId != null)
      json['agentId'] = agentId;
    if (targetVersion != null)
      json['targetVersion'] = targetVersion;
    if (timeout != null)
      json['timeout'] = timeout;
    return json;
  }

  static List<AgentRefreshMessage> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentRefreshMessage>() : json.map((value) => AgentRefreshMessage.fromJson(value)).toList();
  }

  static Map<String, AgentRefreshMessage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentRefreshMessage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentRefreshMessage.fromJson(value));
    }
    return map;
  }
}

