part of azure_devops_sdk.api;

class AgentMigrationMessage {
  
  String accessToken = null;
  AgentMigrationMessage();

  @override
  String toString() {
    return 'AgentMigrationMessage[accessToken=$accessToken, ]';
  }

  AgentMigrationMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['accessToken'] == null) {
      accessToken = null;
    } else {
          accessToken = json['accessToken'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (accessToken != null)
      json['accessToken'] = accessToken;
    return json;
  }

  static List<AgentMigrationMessage> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentMigrationMessage>() : json.map((value) => AgentMigrationMessage.fromJson(value)).toList();
  }

  static Map<String, AgentMigrationMessage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentMigrationMessage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentMigrationMessage.fromJson(value));
    }
    return map;
  }
}

