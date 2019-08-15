part of azure_devops_sdk.api;

class Dependency {
  /* The event. The dependency is satisfied when the referenced object emits this event. */
  String event = null;
  /* The scope. This names the object referenced by the dependency. */
  String scope = null;
  Dependency();

  @override
  String toString() {
    return 'Dependency[event=$event, scope=$scope, ]';
  }

  Dependency.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['event'] == null) {
      event = null;
    } else {
          event = json['event'];
    }
    if (json['scope'] == null) {
      scope = null;
    } else {
          scope = json['scope'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (event != null)
      json['event'] = event;
    if (scope != null)
      json['scope'] = scope;
    return json;
  }

  static List<Dependency> listFromJson(List<dynamic> json) {
    return json == null ? List<Dependency>() : json.map((value) => Dependency.fromJson(value)).toList();
  }

  static Map<String, Dependency> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Dependency>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Dependency.fromJson(value));
    }
    return map;
  }
}

