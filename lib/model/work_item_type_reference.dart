part of azure_devops_sdk.api;

class WorkItemTypeReference {
  
  String url = null;
  WorkItemTypeReference();

  @override
  String toString() {
    return 'WorkItemTypeReference[url=$url, ]';
  }

  WorkItemTypeReference.fromJson(Map<String, dynamic> json) {
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

  static List<WorkItemTypeReference> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTypeReference>() : json.map((value) => WorkItemTypeReference.fromJson(value)).toList();
  }

  static Map<String, WorkItemTypeReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTypeReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTypeReference.fromJson(value));
    }
    return map;
  }
}

