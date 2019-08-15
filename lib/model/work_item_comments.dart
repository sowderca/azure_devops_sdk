part of azure_devops_sdk.api;

class WorkItemComments {
  
  String url = null;
  WorkItemComments();

  @override
  String toString() {
    return 'WorkItemComments[url=$url, ]';
  }

  WorkItemComments.fromJson(Map<String, dynamic> json) {
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

  static List<WorkItemComments> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemComments>() : json.map((value) => WorkItemComments.fromJson(value)).toList();
  }

  static Map<String, WorkItemComments> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemComments>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemComments.fromJson(value));
    }
    return map;
  }
}

