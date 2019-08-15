part of azure_devops_sdk.api;

class ServerExecutionDefinition {
  /*  */
  Object events = null;
  
  String handlerName = null;
  ServerExecutionDefinition();

  @override
  String toString() {
    return 'ServerExecutionDefinition[events=$events, handlerName=$handlerName, ]';
  }

  ServerExecutionDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['events'] == null) {
      events = null;
    } else {
          events = json['events'];
    }
    if (json['handlerName'] == null) {
      handlerName = null;
    } else {
          handlerName = json['handlerName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (events != null)
      json['events'] = events;
    if (handlerName != null)
      json['handlerName'] = handlerName;
    return json;
  }

  static List<ServerExecutionDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<ServerExecutionDefinition>() : json.map((value) => ServerExecutionDefinition.fromJson(value)).toList();
  }

  static Map<String, ServerExecutionDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServerExecutionDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServerExecutionDefinition.fromJson(value));
    }
    return map;
  }
}

