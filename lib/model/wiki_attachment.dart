part of azure_devops_sdk.api;

class WikiAttachment {
  /* Name of the wiki attachment file. */
  String name = null;
  /* Path of the wiki attachment file. */
  String path = null;
  WikiAttachment();

  @override
  String toString() {
    return 'WikiAttachment[name=$name, path=$path, ]';
  }

  WikiAttachment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (path != null)
      json['path'] = path;
    return json;
  }

  static List<WikiAttachment> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiAttachment>() : json.map((value) => WikiAttachment.fromJson(value)).toList();
  }

  static Map<String, WikiAttachment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiAttachment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiAttachment.fromJson(value));
    }
    return map;
  }
}

