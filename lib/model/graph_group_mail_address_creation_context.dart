part of azure_devops_sdk.api;

class GraphGroupMailAddressCreationContext {
  /* Optional: If provided, we will use this identifier for the storage key of the created group */
  String storageKey = null;
  GraphGroupMailAddressCreationContext();

  @override
  String toString() {
    return 'GraphGroupMailAddressCreationContext[storageKey=$storageKey, ]';
  }

  GraphGroupMailAddressCreationContext.fromJson(Map<String, dynamic> json) {
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

  static List<GraphGroupMailAddressCreationContext> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphGroupMailAddressCreationContext>() : json.map((value) => GraphGroupMailAddressCreationContext.fromJson(value)).toList();
  }

  static Map<String, GraphGroupMailAddressCreationContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphGroupMailAddressCreationContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphGroupMailAddressCreationContext.fromJson(value));
    }
    return map;
  }
}

