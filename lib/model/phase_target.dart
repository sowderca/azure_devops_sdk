part of azure_devops_sdk.api;

class PhaseTarget {
  /* The type of the target. */
  int type = null;
  PhaseTarget();

  @override
  String toString() {
    return 'PhaseTarget[type=$type, ]';
  }

  PhaseTarget.fromJson(Map<String, dynamic> json) {
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

  static List<PhaseTarget> listFromJson(List<dynamic> json) {
    return json == null ? List<PhaseTarget>() : json.map((value) => PhaseTarget.fromJson(value)).toList();
  }

  static Map<String, PhaseTarget> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PhaseTarget>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PhaseTarget.fromJson(value));
    }
    return map;
  }
}

