part of azure_devops_sdk.api;

class WorkItemTypeCategory {
  
  String url = null;
  WorkItemTypeCategory();

  @override
  String toString() {
    return 'WorkItemTypeCategory[url=$url, ]';
  }

  WorkItemTypeCategory.fromJson(Map<String, dynamic> json) {
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

  static List<WorkItemTypeCategory> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTypeCategory>() : json.map((value) => WorkItemTypeCategory.fromJson(value)).toList();
  }

  static Map<String, WorkItemTypeCategory> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTypeCategory>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTypeCategory.fromJson(value));
    }
    return map;
  }
}

