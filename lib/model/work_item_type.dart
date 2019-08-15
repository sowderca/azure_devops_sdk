part of azure_devops_sdk.api;

class WorkItemType {
  
  String url = null;
  WorkItemType();

  @override
  String toString() {
    return 'WorkItemType[url=$url, ]';
  }

  WorkItemType.fromJson(Map<String, dynamic> json) {
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

  static List<WorkItemType> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemType>() : json.map((value) => WorkItemType.fromJson(value)).toList();
  }

  static Map<String, WorkItemType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemType.fromJson(value));
    }
    return map;
  }
}

