part of azure_devops_sdk.api;

class WorkItemCommentVersionRef {
  
  String url = null;
  WorkItemCommentVersionRef();

  @override
  String toString() {
    return 'WorkItemCommentVersionRef[url=$url, ]';
  }

  WorkItemCommentVersionRef.fromJson(Map<String, dynamic> json) {
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

  static List<WorkItemCommentVersionRef> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemCommentVersionRef>() : json.map((value) => WorkItemCommentVersionRef.fromJson(value)).toList();
  }

  static Map<String, WorkItemCommentVersionRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemCommentVersionRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemCommentVersionRef.fromJson(value));
    }
    return map;
  }
}

