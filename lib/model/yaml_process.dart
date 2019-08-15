part of azure_devops_sdk.api;

class YamlProcess {
  /* The type of the process. */
  int type = null;
  YamlProcess();

  @override
  String toString() {
    return 'YamlProcess[type=$type, ]';
  }

  YamlProcess.fromJson(Map<String, dynamic> json) {
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

  static List<YamlProcess> listFromJson(List<dynamic> json) {
    return json == null ? List<YamlProcess>() : json.map((value) => YamlProcess.fromJson(value)).toList();
  }

  static Map<String, YamlProcess> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, YamlProcess>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = YamlProcess.fromJson(value));
    }
    return map;
  }
}

