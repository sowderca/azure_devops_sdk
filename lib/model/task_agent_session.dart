part of azure_devops_sdk.api;

class TaskAgentSession {
  
  TaskAgentReference agent = null;
  
  TaskAgentSessionKey encryptionKey = null;
  /* Gets or sets the owner name of this session. Generally this will be the machine of origination. */
  String ownerName = null;
  /* Gets the unique identifier for this session. */
  String sessionId = null;
  
  Map<String, String> systemCapabilities = {};
  TaskAgentSession();

  @override
  String toString() {
    return 'TaskAgentSession[agent=$agent, encryptionKey=$encryptionKey, ownerName=$ownerName, sessionId=$sessionId, systemCapabilities=$systemCapabilities, ]';
  }

  TaskAgentSession.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agent'] == null) {
      agent = null;
    } else {
      agent = TaskAgentReference.fromJson(json['agent']);
    }
    if (json['encryptionKey'] == null) {
      encryptionKey = null;
    } else {
      encryptionKey = TaskAgentSessionKey.fromJson(json['encryptionKey']);
    }
    if (json['ownerName'] == null) {
      ownerName = null;
    } else {
          ownerName = json['ownerName'];
    }
    if (json['sessionId'] == null) {
      sessionId = null;
    } else {
          sessionId = json['sessionId'];
    }
    if (json['systemCapabilities'] == null) {
      systemCapabilities = null;
    } else {
          systemCapabilities = (json['systemCapabilities'] as Map).cast<String, String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agent != null)
      json['agent'] = agent;
    if (encryptionKey != null)
      json['encryptionKey'] = encryptionKey;
    if (ownerName != null)
      json['ownerName'] = ownerName;
    if (sessionId != null)
      json['sessionId'] = sessionId;
    if (systemCapabilities != null)
      json['systemCapabilities'] = systemCapabilities;
    return json;
  }

  static List<TaskAgentSession> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentSession>() : json.map((value) => TaskAgentSession.fromJson(value)).toList();
  }

  static Map<String, TaskAgentSession> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentSession>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentSession.fromJson(value));
    }
    return map;
  }
}

