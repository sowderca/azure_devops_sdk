part of azure_devops_sdk.api;

class ReleaseWorkItemRef {
  /* Gets or sets the ID. */
  String id = null;
  /* Gets or sets the state. */
  String state = null;
  /* Gets or sets the title. */
  String title = null;
  /* Gets or sets the type. */
  String type = null;
  /* Gets or sets the workitem url. */
  String url = null;
  ReleaseWorkItemRef();

  @override
  String toString() {
    return 'ReleaseWorkItemRef[id=$id, state=$state, title=$title, type=$type, url=$url, ]';
  }

  ReleaseWorkItemRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (state != null)
      json['state'] = state;
    if (title != null)
      json['title'] = title;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ReleaseWorkItemRef> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseWorkItemRef>() : json.map((value) => ReleaseWorkItemRef.fromJson(value)).toList();
  }

  static Map<String, ReleaseWorkItemRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseWorkItemRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseWorkItemRef.fromJson(value));
    }
    return map;
  }
}

