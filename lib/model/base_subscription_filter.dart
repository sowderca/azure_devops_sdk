part of azure_devops_sdk.api;

class BaseSubscriptionFilter {
  
  String eventType = null;
  
  String type = null;
  BaseSubscriptionFilter();

  @override
  String toString() {
    return 'BaseSubscriptionFilter[eventType=$eventType, type=$type, ]';
  }

  BaseSubscriptionFilter.fromJson(Map<String, dynamic> json) {
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

  static List<BaseSubscriptionFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<BaseSubscriptionFilter>() : json.map((value) => BaseSubscriptionFilter.fromJson(value)).toList();
  }

  static Map<String, BaseSubscriptionFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BaseSubscriptionFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BaseSubscriptionFilter.fromJson(value));
    }
    return map;
  }
}

