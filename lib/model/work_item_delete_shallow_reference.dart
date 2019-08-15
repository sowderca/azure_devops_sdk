part of azure_devops_sdk.api;

class WorkItemDeleteShallowReference {
  /* Work item ID. */
  int id = null;
  /* REST API URL of the resource */
  String url = null;
  WorkItemDeleteShallowReference();

  @override
  String toString() {
    return 'WorkItemDeleteShallowReference[id=$id, url=$url, ]';
  }

  WorkItemDeleteShallowReference.fromJson(Map<String, dynamic> json) {
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

  static List<WorkItemDeleteShallowReference> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemDeleteShallowReference>() : json.map((value) => WorkItemDeleteShallowReference.fromJson(value)).toList();
  }

  static Map<String, WorkItemDeleteShallowReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemDeleteShallowReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemDeleteShallowReference.fromJson(value));
    }
    return map;
  }
}

