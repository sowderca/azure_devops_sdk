part of azure_devops_sdk.api;

class GraphCachePolicies {
  /* Size of the cache */
  int cacheSize = null;
  GraphCachePolicies();

  @override
  String toString() {
    return 'GraphCachePolicies[cacheSize=$cacheSize, ]';
  }

  GraphCachePolicies.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['cacheSize'] == null) {
      cacheSize = null;
    } else {
          cacheSize = json['cacheSize'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cacheSize != null)
      json['cacheSize'] = cacheSize;
    return json;
  }

  static List<GraphCachePolicies> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphCachePolicies>() : json.map((value) => GraphCachePolicies.fromJson(value)).toList();
  }

  static Map<String, GraphCachePolicies> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphCachePolicies>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphCachePolicies.fromJson(value));
    }
    return map;
  }
}

