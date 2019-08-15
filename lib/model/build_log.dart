part of azure_devops_sdk.api;

class BuildLog {
  /* The ID of the log. */
  int id = null;
  /* The type of the log location. */
  String type = null;
  /* A full link to the log resource. */
  String url = null;
  BuildLog();

  @override
  String toString() {
    return 'BuildLog[id=$id, type=$type, url=$url, ]';
  }

  BuildLog.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
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
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<BuildLog> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildLog>() : json.map((value) => BuildLog.fromJson(value)).toList();
  }

  static Map<String, BuildLog> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildLog>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildLog.fromJson(value));
    }
    return map;
  }
}

