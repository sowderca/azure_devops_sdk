part of azure_devops_sdk.api;

class GraphUserMailAddressCreationContext {
  /* Optional: If provided, we will use this identifier for the storage key of the created user */
  String storageKey = null;
  GraphUserMailAddressCreationContext();

  @override
  String toString() {
    return 'GraphUserMailAddressCreationContext[storageKey=$storageKey, ]';
  }

  GraphUserMailAddressCreationContext.fromJson(Map<String, dynamic> json) {
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

  static List<GraphUserMailAddressCreationContext> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphUserMailAddressCreationContext>() : json.map((value) => GraphUserMailAddressCreationContext.fromJson(value)).toList();
  }

  static Map<String, GraphUserMailAddressCreationContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphUserMailAddressCreationContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphUserMailAddressCreationContext.fromJson(value));
    }
    return map;
  }
}

