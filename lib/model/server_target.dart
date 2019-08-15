part of azure_devops_sdk.api;

class ServerTarget {
  /* The type of the target. */
  int type = null;
  ServerTarget();

  @override
  String toString() {
    return 'ServerTarget[type=$type, ]';
  }

  ServerTarget.fromJson(Map<String, dynamic> json) {
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

  static List<ServerTarget> listFromJson(List<dynamic> json) {
    return json == null ? List<ServerTarget>() : json.map((value) => ServerTarget.fromJson(value)).toList();
  }

  static Map<String, ServerTarget> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServerTarget>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServerTarget.fromJson(value));
    }
    return map;
  }
}

