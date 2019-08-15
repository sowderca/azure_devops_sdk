part of azure_devops_sdk.api;

class GraphSubjectLookupKey {
  
  String descriptor = null;
  GraphSubjectLookupKey();

  @override
  String toString() {
    return 'GraphSubjectLookupKey[descriptor=$descriptor, ]';
  }

  GraphSubjectLookupKey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['descriptor'] == null) {
      descriptor = null;
    } else {
          descriptor = json['descriptor'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (descriptor != null)
      json['descriptor'] = descriptor;
    return json;
  }

  static List<GraphSubjectLookupKey> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphSubjectLookupKey>() : json.map((value) => GraphSubjectLookupKey.fromJson(value)).toList();
  }

  static Map<String, GraphSubjectLookupKey> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphSubjectLookupKey>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphSubjectLookupKey.fromJson(value));
    }
    return map;
  }
}

