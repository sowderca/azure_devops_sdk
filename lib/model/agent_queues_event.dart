part of azure_devops_sdk.api;

class AgentQueuesEvent {
  
  String eventType = null;
  
  List<TaskAgentQueue> queues = [];
  AgentQueuesEvent();

  @override
  String toString() {
    return 'AgentQueuesEvent[eventType=$eventType, queues=$queues, ]';
  }

  AgentQueuesEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['eventType'] == null) {
      eventType = null;
    } else {
          eventType = json['eventType'];
    }
    if (json['queues'] == null) {
      queues = null;
    } else {
      queues = TaskAgentQueue.listFromJson(json['queues']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (eventType != null)
      json['eventType'] = eventType;
    if (queues != null)
      json['queues'] = queues;
    return json;
  }

  static List<AgentQueuesEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentQueuesEvent>() : json.map((value) => AgentQueuesEvent.fromJson(value)).toList();
  }

  static Map<String, AgentQueuesEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentQueuesEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentQueuesEvent.fromJson(value));
    }
    return map;
  }
}

