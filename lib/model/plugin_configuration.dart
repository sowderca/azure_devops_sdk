part of azure_devops_sdk.api;

class PluginConfiguration {
  
  String goalPrefix = null;
  PluginConfiguration();

  @override
  String toString() {
    return 'PluginConfiguration[goalPrefix=$goalPrefix, ]';
  }

  PluginConfiguration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['goalPrefix'] == null) {
      goalPrefix = null;
    } else {
          goalPrefix = json['goalPrefix'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (goalPrefix != null)
      json['goalPrefix'] = goalPrefix;
    return json;
  }

  static List<PluginConfiguration> listFromJson(List<dynamic> json) {
    return json == null ? List<PluginConfiguration>() : json.map((value) => PluginConfiguration.fromJson(value)).toList();
  }

  static Map<String, PluginConfiguration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PluginConfiguration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PluginConfiguration.fromJson(value));
    }
    return map;
  }
}

