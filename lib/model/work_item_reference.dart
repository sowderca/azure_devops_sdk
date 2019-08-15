part of azure_devops_sdk.api;

class WorkItemReference {
  /* WorkItem Id. */
  String id = null;
  /* WorkItem Name. */
  String name = null;
  /* WorkItem Type. */
  String type = null;
  /* WorkItem Url. Valid Values : (Bug, Task, User Story, Test Case) */
  String url = null;
  /* WorkItem WebUrl. */
  String webUrl = null;
  WorkItemReference();

  @override
  String toString() {
    return 'WorkItemReference[id=$id, name=$name, type=$type, url=$url, webUrl=$webUrl, ]';
  }

  WorkItemReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['webUrl'] == null) {
      webUrl = null;
    } else {
          webUrl = json['webUrl'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    if (webUrl != null)
      json['webUrl'] = webUrl;
    return json;
  }

  static List<WorkItemReference> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemReference>() : json.map((value) => WorkItemReference.fromJson(value)).toList();
  }

  static Map<String, WorkItemReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemReference.fromJson(value));
    }
    return map;
  }
}

