part of azure_devops_sdk.api;

class JobEventConfig {
  
  String timeout = null;
  JobEventConfig();

  @override
  String toString() {
    return 'JobEventConfig[timeout=$timeout, ]';
  }

  JobEventConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['timeout'] == null) {
      timeout = null;
    } else {
          timeout = json['timeout'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (timeout != null)
      json['timeout'] = timeout;
    return json;
  }

  static List<JobEventConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<JobEventConfig>() : json.map((value) => JobEventConfig.fromJson(value)).toList();
  }

  static Map<String, JobEventConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JobEventConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JobEventConfig.fromJson(value));
    }
    return map;
  }
}

