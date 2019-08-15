part of azure_devops_sdk.api;

class EnvironmentExecutionPolicy {
  /* This policy decides, how many environments would be with Environment Runner. */
  int concurrencyCount = null;
  /* Queue depth in the EnvironmentQueue table, this table keeps the environment entries till Environment Runner is free [as per it's policy] to take another environment for running. */
  int queueDepthCount = null;
  EnvironmentExecutionPolicy();

  @override
  String toString() {
    return 'EnvironmentExecutionPolicy[concurrencyCount=$concurrencyCount, queueDepthCount=$queueDepthCount, ]';
  }

  EnvironmentExecutionPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['concurrencyCount'] == null) {
      concurrencyCount = null;
    } else {
          concurrencyCount = json['concurrencyCount'];
    }
    if (json['queueDepthCount'] == null) {
      queueDepthCount = null;
    } else {
          queueDepthCount = json['queueDepthCount'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (concurrencyCount != null)
      json['concurrencyCount'] = concurrencyCount;
    if (queueDepthCount != null)
      json['queueDepthCount'] = queueDepthCount;
    return json;
  }

  static List<EnvironmentExecutionPolicy> listFromJson(List<dynamic> json) {
    return json == null ? List<EnvironmentExecutionPolicy>() : json.map((value) => EnvironmentExecutionPolicy.fromJson(value)).toList();
  }

  static Map<String, EnvironmentExecutionPolicy> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EnvironmentExecutionPolicy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EnvironmentExecutionPolicy.fromJson(value));
    }
    return map;
  }
}

