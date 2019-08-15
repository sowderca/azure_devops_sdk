part of azure_devops_sdk.api;

class RoleBasedFilter {
  
  String eventType = null;
  
  String type = null;
  RoleBasedFilter();

  @override
  String toString() {
    return 'RoleBasedFilter[eventType=$eventType, type=$type, ]';
  }

  RoleBasedFilter.fromJson(Map<String, dynamic> json) {
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

  static List<RoleBasedFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<RoleBasedFilter>() : json.map((value) => RoleBasedFilter.fromJson(value)).toList();
  }

  static Map<String, RoleBasedFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RoleBasedFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RoleBasedFilter.fromJson(value));
    }
    return map;
  }
}

