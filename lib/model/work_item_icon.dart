part of azure_devops_sdk.api;

class WorkItemIcon {
  /* The identifier of the icon. */
  String id = null;
  /* The REST URL of the resource. */
  String url = null;
  WorkItemIcon();

  @override
  String toString() {
    return 'WorkItemIcon[id=$id, url=$url, ]';
  }

  WorkItemIcon.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WorkItemIcon> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemIcon>() : json.map((value) => WorkItemIcon.fromJson(value)).toList();
  }

  static Map<String, WorkItemIcon> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemIcon>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemIcon.fromJson(value));
    }
    return map;
  }
}

