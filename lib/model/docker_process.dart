part of azure_devops_sdk.api;

class DockerProcess {
  /* The type of the process. */
  int type = null;
  DockerProcess();

  @override
  String toString() {
    return 'DockerProcess[type=$type, ]';
  }

  DockerProcess.fromJson(Map<String, dynamic> json) {
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

  static List<DockerProcess> listFromJson(List<dynamic> json) {
    return json == null ? List<DockerProcess>() : json.map((value) => DockerProcess.fromJson(value)).toList();
  }

  static Map<String, DockerProcess> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DockerProcess>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DockerProcess.fromJson(value));
    }
    return map;
  }
}

