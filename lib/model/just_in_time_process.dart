part of azure_devops_sdk.api;

class JustInTimeProcess {
  /* The type of the process. */
  int type = null;
  JustInTimeProcess();

  @override
  String toString() {
    return 'JustInTimeProcess[type=$type, ]';
  }

  JustInTimeProcess.fromJson(Map<String, dynamic> json) {
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

  static List<JustInTimeProcess> listFromJson(List<dynamic> json) {
    return json == null ? List<JustInTimeProcess>() : json.map((value) => JustInTimeProcess.fromJson(value)).toList();
  }

  static Map<String, JustInTimeProcess> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JustInTimeProcess>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JustInTimeProcess.fromJson(value));
    }
    return map;
  }
}

