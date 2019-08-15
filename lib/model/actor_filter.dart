part of azure_devops_sdk.api;

class ActorFilter {
  
  String eventType = null;
  
  String type = null;
  ActorFilter();

  @override
  String toString() {
    return 'ActorFilter[eventType=$eventType, type=$type, ]';
  }

  ActorFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['eventType'] == null) {
      eventType = null;
    } else {
          eventType = json['eventType'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (eventType != null)
      json['eventType'] = eventType;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<ActorFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<ActorFilter>() : json.map((value) => ActorFilter.fromJson(value)).toList();
  }

  static Map<String, ActorFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ActorFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ActorFilter.fromJson(value));
    }
    return map;
  }
}

