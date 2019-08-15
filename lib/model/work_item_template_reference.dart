part of azure_devops_sdk.api;

class WorkItemTemplateReference {
  
  String url = null;
  WorkItemTemplateReference();

  @override
  String toString() {
    return 'WorkItemTemplateReference[url=$url, ]';
  }

  WorkItemTemplateReference.fromJson(Map<String, dynamic> json) {
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

  static List<WorkItemTemplateReference> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTemplateReference>() : json.map((value) => WorkItemTemplateReference.fromJson(value)).toList();
  }

  static Map<String, WorkItemTemplateReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTemplateReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTemplateReference.fromJson(value));
    }
    return map;
  }
}

