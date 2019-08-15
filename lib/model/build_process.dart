part of azure_devops_sdk.api;

class BuildProcess {
  /* The type of the process. */
  int type = null;
  BuildProcess();

  @override
  String toString() {
    return 'BuildProcess[type=$type, ]';
  }

  BuildProcess.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<BuildProcess> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildProcess>() : json.map((value) => BuildProcess.fromJson(value)).toList();
  }

  static Map<String, BuildProcess> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildProcess>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildProcess.fromJson(value));
    }
    return map;
  }
}

