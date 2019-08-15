part of azure_devops_sdk.api;

class BuildLogReference {
  /* The ID of the log. */
  int id = null;
  /* The type of the log location. */
  String type = null;
  /* A full link to the log resource. */
  String url = null;
  BuildLogReference();

  @override
  String toString() {
    return 'BuildLogReference[id=$id, type=$type, url=$url, ]';
  }

  BuildLogReference.fromJson(Map<String, dynamic> json) {
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

  static List<BuildLogReference> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildLogReference>() : json.map((value) => BuildLogReference.fromJson(value)).toList();
  }

  static Map<String, BuildLogReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildLogReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildLogReference.fromJson(value));
    }
    return map;
  }
}

