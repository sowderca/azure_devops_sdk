part of azure_devops_sdk.api;

class WorkItemComment {
  
  String url = null;
  WorkItemComment();

  @override
  String toString() {
    return 'WorkItemComment[url=$url, ]';
  }

  WorkItemComment.fromJson(Map<String, dynamic> json) {
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

  static List<WorkItemComment> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemComment>() : json.map((value) => WorkItemComment.fromJson(value)).toList();
  }

  static Map<String, WorkItemComment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemComment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemComment.fromJson(value));
    }
    return map;
  }
}

