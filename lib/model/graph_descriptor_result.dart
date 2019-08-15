part of azure_devops_sdk.api;

class GraphDescriptorResult {
  
  ReferenceLinks links = null;
  
  String value = null;
  GraphDescriptorResult();

  @override
  String toString() {
    return 'GraphDescriptorResult[links=$links, value=$value, ]';
  }

  GraphDescriptorResult.fromJson(Map<String, dynamic> json) {
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

  static List<GraphDescriptorResult> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphDescriptorResult>() : json.map((value) => GraphDescriptorResult.fromJson(value)).toList();
  }

  static Map<String, GraphDescriptorResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphDescriptorResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphDescriptorResult.fromJson(value));
    }
    return map;
  }
}

