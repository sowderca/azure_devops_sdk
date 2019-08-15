part of azure_devops_sdk.api;

class DataProviderContext {
  /* Generic property bag that contains context-specific properties that data providers can use when populating their data dictionary */
  Map<String, Object> properties = {};
  DataProviderContext();

  @override
  String toString() {
    return 'DataProviderContext[properties=$properties, ]';
  }

  DataProviderContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = Object.mapFromJson(json['properties']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (properties != null)
      json['properties'] = properties;
    return json;
  }

  static List<DataProviderContext> listFromJson(List<dynamic> json) {
    return json == null ? List<DataProviderContext>() : json.map((value) => DataProviderContext.fromJson(value)).toList();
  }

  static Map<String, DataProviderContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DataProviderContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DataProviderContext.fromJson(value));
    }
    return map;
  }
}

