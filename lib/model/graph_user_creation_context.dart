part of azure_devops_sdk.api;

class GraphUserCreationContext {
  /* Optional: If provided, we will use this identifier for the storage key of the created user */
  String storageKey = null;
  GraphUserCreationContext();

  @override
  String toString() {
    return 'GraphUserCreationContext[storageKey=$storageKey, ]';
  }

  GraphUserCreationContext.fromJson(Map<String, dynamic> json) {
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

  static List<GraphUserCreationContext> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphUserCreationContext>() : json.map((value) => GraphUserCreationContext.fromJson(value)).toList();
  }

  static Map<String, GraphUserCreationContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphUserCreationContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphUserCreationContext.fromJson(value));
    }
    return map;
  }
}

