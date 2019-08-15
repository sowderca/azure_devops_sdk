part of azure_devops_sdk.api;

class Forks {
  /* Indicates whether a build should use secrets when building forks of the selected repository. */
  bool allowSecrets = null;
  /* Indicates whether the trigger should queue builds for forks of the selected repository. */
  bool enabled = null;
  Forks();

  @override
  String toString() {
    return 'Forks[allowSecrets=$allowSecrets, enabled=$enabled, ]';
  }

  Forks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['allowSecrets'] == null) {
      allowSecrets = null;
    } else {
          allowSecrets = json['allowSecrets'];
    }
    if (json['enabled'] == null) {
      enabled = null;
    } else {
          enabled = json['enabled'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (allowSecrets != null)
      json['allowSecrets'] = allowSecrets;
    if (enabled != null)
      json['enabled'] = enabled;
    return json;
  }

  static List<Forks> listFromJson(List<dynamic> json) {
    return json == null ? List<Forks>() : json.map((value) => Forks.fromJson(value)).toList();
  }

  static Map<String, Forks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Forks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Forks.fromJson(value));
    }
    return map;
  }
}

