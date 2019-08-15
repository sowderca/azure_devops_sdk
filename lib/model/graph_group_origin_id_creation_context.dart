part of azure_devops_sdk.api;

class GraphGroupOriginIdCreationContext {
  /* Optional: If provided, we will use this identifier for the storage key of the created group */
  String storageKey = null;
  GraphGroupOriginIdCreationContext();

  @override
  String toString() {
    return 'GraphGroupOriginIdCreationContext[storageKey=$storageKey, ]';
  }

  GraphGroupOriginIdCreationContext.fromJson(Map<String, dynamic> json) {
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

  static List<GraphGroupOriginIdCreationContext> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphGroupOriginIdCreationContext>() : json.map((value) => GraphGroupOriginIdCreationContext.fromJson(value)).toList();
  }

  static Map<String, GraphGroupOriginIdCreationContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphGroupOriginIdCreationContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphGroupOriginIdCreationContext.fromJson(value));
    }
    return map;
  }
}

