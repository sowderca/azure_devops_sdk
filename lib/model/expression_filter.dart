part of azure_devops_sdk.api;

class ExpressionFilter {
  
  String eventType = null;
  
  String type = null;
  ExpressionFilter();

  @override
  String toString() {
    return 'ExpressionFilter[eventType=$eventType, type=$type, ]';
  }

  ExpressionFilter.fromJson(Map<String, dynamic> json) {
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

  static List<ExpressionFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<ExpressionFilter>() : json.map((value) => ExpressionFilter.fromJson(value)).toList();
  }

  static Map<String, ExpressionFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExpressionFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExpressionFilter.fromJson(value));
    }
    return map;
  }
}

