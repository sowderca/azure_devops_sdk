part of azure_devops_sdk.api;

class DesignerProcess {
  /* The type of the process. */
  int type = null;
  DesignerProcess();

  @override
  String toString() {
    return 'DesignerProcess[type=$type, ]';
  }

  DesignerProcess.fromJson(Map<String, dynamic> json) {
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

  static List<DesignerProcess> listFromJson(List<dynamic> json) {
    return json == null ? List<DesignerProcess>() : json.map((value) => DesignerProcess.fromJson(value)).toList();
  }

  static Map<String, DesignerProcess> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DesignerProcess>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DesignerProcess.fromJson(value));
    }
    return map;
  }
}

