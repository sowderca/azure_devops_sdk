part of azure_devops_sdk.api;

class GraphStorageKeyResult {
  
  ReferenceLinks links = null;
  
  String value = null;
  GraphStorageKeyResult();

  @override
  String toString() {
    return 'GraphStorageKeyResult[links=$links, value=$value, ]';
  }

  GraphStorageKeyResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<GraphStorageKeyResult> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphStorageKeyResult>() : json.map((value) => GraphStorageKeyResult.fromJson(value)).toList();
  }

  static Map<String, GraphStorageKeyResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphStorageKeyResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphStorageKeyResult.fromJson(value));
    }
    return map;
  }
}

