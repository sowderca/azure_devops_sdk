part of azure_devops_sdk.api;

class FileDiffParams {
  /* Original path of the file */
  String originalPath = null;
  /* Current path of the file */
  String path = null;
  FileDiffParams();

  @override
  String toString() {
    return 'FileDiffParams[originalPath=$originalPath, path=$path, ]';
  }

  FileDiffParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['originalPath'] == null) {
      originalPath = null;
    } else {
          originalPath = json['originalPath'];
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (originalPath != null)
      json['originalPath'] = originalPath;
    if (path != null)
      json['path'] = path;
    return json;
  }

  static List<FileDiffParams> listFromJson(List<dynamic> json) {
    return json == null ? List<FileDiffParams>() : json.map((value) => FileDiffParams.fromJson(value)).toList();
  }

  static Map<String, FileDiffParams> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FileDiffParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FileDiffParams.fromJson(value));
    }
    return map;
  }
}

