part of azure_devops_sdk.api;

class WorkItemUpdate {
  
  String url = null;
  WorkItemUpdate();

  @override
  String toString() {
    return 'WorkItemUpdate[url=$url, ]';
  }

  WorkItemUpdate.fromJson(Map<String, dynamic> json) {
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

  static List<WorkItemUpdate> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemUpdate>() : json.map((value) => WorkItemUpdate.fromJson(value)).toList();
  }

  static Map<String, WorkItemUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemUpdate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemUpdate.fromJson(value));
    }
    return map;
  }
}

