part of azure_devops_sdk.api;

class ISubscriptionFilter {
  
  String eventType = null;
  
  String type = null;
  ISubscriptionFilter();

  @override
  String toString() {
    return 'ISubscriptionFilter[eventType=$eventType, type=$type, ]';
  }

  ISubscriptionFilter.fromJson(Map<String, dynamic> json) {
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

  static List<ISubscriptionFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<ISubscriptionFilter>() : json.map((value) => ISubscriptionFilter.fromJson(value)).toList();
  }

  static Map<String, ISubscriptionFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ISubscriptionFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ISubscriptionFilter.fromJson(value));
    }
    return map;
  }
}

