part of azure_devops_sdk.api;

class GraphSubjectLookup {
  
  List<GraphSubjectLookupKey> lookupKeys = [];
  GraphSubjectLookup();

  @override
  String toString() {
    return 'GraphSubjectLookup[lookupKeys=$lookupKeys, ]';
  }

  GraphSubjectLookup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['lookupKeys'] == null) {
      lookupKeys = null;
    } else {
      lookupKeys = GraphSubjectLookupKey.listFromJson(json['lookupKeys']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (lookupKeys != null)
      json['lookupKeys'] = lookupKeys;
    return json;
  }

  static List<GraphSubjectLookup> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphSubjectLookup>() : json.map((value) => GraphSubjectLookup.fromJson(value)).toList();
  }

  static Map<String, GraphSubjectLookup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphSubjectLookup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphSubjectLookup.fromJson(value));
    }
    return map;
  }
}

