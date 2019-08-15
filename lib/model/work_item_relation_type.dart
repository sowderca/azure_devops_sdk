part of azure_devops_sdk.api;

class WorkItemRelationType {
  
  String url = null;
  WorkItemRelationType();

  @override
  String toString() {
    return 'WorkItemRelationType[url=$url, ]';
  }

  WorkItemRelationType.fromJson(Map<String, dynamic> json) {
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

  static List<WorkItemRelationType> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemRelationType>() : json.map((value) => WorkItemRelationType.fromJson(value)).toList();
  }

  static Map<String, WorkItemRelationType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemRelationType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemRelationType.fromJson(value));
    }
    return map;
  }
}

