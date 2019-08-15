part of azure_devops_sdk.api;

class WorkItemTemplate {
  
  String url = null;
  WorkItemTemplate();

  @override
  String toString() {
    return 'WorkItemTemplate[url=$url, ]';
  }

  WorkItemTemplate.fromJson(Map<String, dynamic> json) {
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

  static List<WorkItemTemplate> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTemplate>() : json.map((value) => WorkItemTemplate.fromJson(value)).toList();
  }

  static Map<String, WorkItemTemplate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTemplate.fromJson(value));
    }
    return map;
  }
}

