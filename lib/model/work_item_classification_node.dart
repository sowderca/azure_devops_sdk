part of azure_devops_sdk.api;

class WorkItemClassificationNode {
  
  String url = null;
  WorkItemClassificationNode();

  @override
  String toString() {
    return 'WorkItemClassificationNode[url=$url, ]';
  }

  WorkItemClassificationNode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WorkItemClassificationNode> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemClassificationNode>() : json.map((value) => WorkItemClassificationNode.fromJson(value)).toList();
  }

  static Map<String, WorkItemClassificationNode> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemClassificationNode>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemClassificationNode.fromJson(value));
    }
    return map;
  }
}

