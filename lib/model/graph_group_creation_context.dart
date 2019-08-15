part of azure_devops_sdk.api;

class GraphGroupCreationContext {
  /* Optional: If provided, we will use this identifier for the storage key of the created group */
  String storageKey = null;
  GraphGroupCreationContext();

  @override
  String toString() {
    return 'GraphGroupCreationContext[storageKey=$storageKey, ]';
  }

  GraphGroupCreationContext.fromJson(Map<String, dynamic> json) {
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

  static List<GraphGroupCreationContext> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphGroupCreationContext>() : json.map((value) => GraphGroupCreationContext.fromJson(value)).toList();
  }

  static Map<String, GraphGroupCreationContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphGroupCreationContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphGroupCreationContext.fromJson(value));
    }
    return map;
  }
}

