part of azure_devops_sdk.api;

class Configuration {
  /* Id of the Configuration Assigned to the Test Point */
  int configurationId = null;
  Configuration();

  @override
  String toString() {
    return 'Configuration[configurationId=$configurationId, ]';
  }

  Configuration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['configurationId'] == null) {
      configurationId = null;
    } else {
          configurationId = json['configurationId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (configurationId != null)
      json['configurationId'] = configurationId;
    return json;
  }

  static List<Configuration> listFromJson(List<dynamic> json) {
    return json == null ? List<Configuration>() : json.map((value) => Configuration.fromJson(value)).toList();
  }

  static Map<String, Configuration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Configuration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Configuration.fromJson(value));
    }
    return map;
  }
}

