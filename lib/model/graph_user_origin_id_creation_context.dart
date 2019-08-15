part of azure_devops_sdk.api;

class GraphUserOriginIdCreationContext {
  /* Optional: If provided, we will use this identifier for the storage key of the created user */
  String storageKey = null;
  GraphUserOriginIdCreationContext();

  @override
  String toString() {
    return 'GraphUserOriginIdCreationContext[storageKey=$storageKey, ]';
  }

  GraphUserOriginIdCreationContext.fromJson(Map<String, dynamic> json) {
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

  static List<GraphUserOriginIdCreationContext> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphUserOriginIdCreationContext>() : json.map((value) => GraphUserOriginIdCreationContext.fromJson(value)).toList();
  }

  static Map<String, GraphUserOriginIdCreationContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphUserOriginIdCreationContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphUserOriginIdCreationContext.fromJson(value));
    }
    return map;
  }
}

