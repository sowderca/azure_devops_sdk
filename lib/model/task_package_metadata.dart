part of azure_devops_sdk.api;

class TaskPackageMetadata {
  /* Gets the name of the package. */
  String type = null;
  /* Gets the url of the package. */
  String url = null;
  /* Gets the version of the package. */
  String version = null;
  TaskPackageMetadata();

  @override
  String toString() {
    return 'TaskPackageMetadata[type=$type, url=$url, version=$version, ]';
  }

  TaskPackageMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<TaskPackageMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskPackageMetadata>() : json.map((value) => TaskPackageMetadata.fromJson(value)).toList();
  }

  static Map<String, TaskPackageMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskPackageMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskPackageMetadata.fromJson(value));
    }
    return map;
  }
}

