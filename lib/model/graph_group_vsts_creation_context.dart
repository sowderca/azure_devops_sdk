part of azure_devops_sdk.api;

class GraphGroupVstsCreationContext {
  /* Optional: If provided, we will use this identifier for the storage key of the created group */
  String storageKey = null;
  GraphGroupVstsCreationContext();

  @override
  String toString() {
    return 'GraphGroupVstsCreationContext[storageKey=$storageKey, ]';
  }

  GraphGroupVstsCreationContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['storageKey'] == null) {
      storageKey = null;
    } else {
          storageKey = json['storageKey'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (storageKey != null)
      json['storageKey'] = storageKey;
    return json;
  }

  static List<GraphGroupVstsCreationContext> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphGroupVstsCreationContext>() : json.map((value) => GraphGroupVstsCreationContext.fromJson(value)).toList();
  }

  static Map<String, GraphGroupVstsCreationContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphGroupVstsCreationContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphGroupVstsCreationContext.fromJson(value));
    }
    return map;
  }
}

