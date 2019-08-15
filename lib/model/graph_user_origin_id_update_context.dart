part of azure_devops_sdk.api;

class GraphUserOriginIdUpdateContext {
  GraphUserOriginIdUpdateContext();

  @override
  String toString() {
    return 'GraphUserOriginIdUpdateContext[]';
  }

  GraphUserOriginIdUpdateContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    return json;
  }

  static List<GraphUserOriginIdUpdateContext> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphUserOriginIdUpdateContext>() : json.map((value) => GraphUserOriginIdUpdateContext.fromJson(value)).toList();
  }

  static Map<String, GraphUserOriginIdUpdateContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphUserOriginIdUpdateContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphUserOriginIdUpdateContext.fromJson(value));
    }
    return map;
  }
}

