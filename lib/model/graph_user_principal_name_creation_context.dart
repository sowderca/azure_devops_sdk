part of azure_devops_sdk.api;

class GraphUserPrincipalNameCreationContext {
  /* Optional: If provided, we will use this identifier for the storage key of the created user */
  String storageKey = null;
  GraphUserPrincipalNameCreationContext();

  @override
  String toString() {
    return 'GraphUserPrincipalNameCreationContext[storageKey=$storageKey, ]';
  }

  GraphUserPrincipalNameCreationContext.fromJson(Map<String, dynamic> json) {
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

  static List<GraphUserPrincipalNameCreationContext> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphUserPrincipalNameCreationContext>() : json.map((value) => GraphUserPrincipalNameCreationContext.fromJson(value)).toList();
  }

  static Map<String, GraphUserPrincipalNameCreationContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphUserPrincipalNameCreationContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphUserPrincipalNameCreationContext.fromJson(value));
    }
    return map;
  }
}

