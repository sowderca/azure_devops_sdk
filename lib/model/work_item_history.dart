part of azure_devops_sdk.api;

class WorkItemHistory {
  
  String url = null;
  WorkItemHistory();

  @override
  String toString() {
    return 'WorkItemHistory[url=$url, ]';
  }

  WorkItemHistory.fromJson(Map<String, dynamic> json) {
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

  static List<WorkItemHistory> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemHistory>() : json.map((value) => WorkItemHistory.fromJson(value)).toList();
  }

  static Map<String, WorkItemHistory> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemHistory>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemHistory.fromJson(value));
    }
    return map;
  }
}

