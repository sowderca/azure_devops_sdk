part of azure_devops_sdk.api;

class UnsupportedFilter {
  
  String eventType = null;
  
  String type = null;
  UnsupportedFilter();

  @override
  String toString() {
    return 'UnsupportedFilter[eventType=$eventType, type=$type, ]';
  }

  UnsupportedFilter.fromJson(Map<String, dynamic> json) {
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

  static List<UnsupportedFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<UnsupportedFilter>() : json.map((value) => UnsupportedFilter.fromJson(value)).toList();
  }

  static Map<String, UnsupportedFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UnsupportedFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UnsupportedFilter.fromJson(value));
    }
    return map;
  }
}

