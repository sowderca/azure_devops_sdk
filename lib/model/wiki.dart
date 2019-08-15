part of azure_devops_sdk.api;

class Wiki {
  /* Id of the wiki. */
  String id = null;
  /* Mapped path for the wiki. */
  String mappedPath = null;
  /* Name of the wiki. */
  String name = null;
  /* Version for wiki. */
  String version = null;
  Wiki();

  @override
  String toString() {
    return 'Wiki[id=$id, mappedPath=$mappedPath, name=$name, version=$version, ]';
  }

  Wiki.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['mappedPath'] == null) {
      mappedPath = null;
    } else {
          mappedPath = json['mappedPath'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (mappedPath != null)
      json['mappedPath'] = mappedPath;
    if (name != null)
      json['name'] = name;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<Wiki> listFromJson(List<dynamic> json) {
    return json == null ? List<Wiki>() : json.map((value) => Wiki.fromJson(value)).toList();
  }

  static Map<String, Wiki> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Wiki>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Wiki.fromJson(value));
    }
    return map;
  }
}

