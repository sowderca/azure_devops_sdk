part of azure_devops_sdk.api;

class JobEventsConfig {
  JobEventsConfig();

  @override
  String toString() {
    return 'JobEventsConfig[]';
  }

  JobEventsConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    return json;
  }

  static List<JobEventsConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<JobEventsConfig>() : json.map((value) => JobEventsConfig.fromJson(value)).toList();
  }

  static Map<String, JobEventsConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JobEventsConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JobEventsConfig.fromJson(value));
    }
    return map;
  }
}

