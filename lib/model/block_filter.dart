part of azure_devops_sdk.api;

class BlockFilter {
  
  String eventType = null;
  
  String type = null;
  BlockFilter();

  @override
  String toString() {
    return 'BlockFilter[eventType=$eventType, type=$type, ]';
  }

  BlockFilter.fromJson(Map<String, dynamic> json) {
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

  static List<BlockFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<BlockFilter>() : json.map((value) => BlockFilter.fromJson(value)).toList();
  }

  static Map<String, BlockFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BlockFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BlockFilter.fromJson(value));
    }
    return map;
  }
}

