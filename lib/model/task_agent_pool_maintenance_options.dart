part of azure_devops_sdk.api;

class TaskAgentPoolMaintenanceOptions {
  /* time to consider a System.DefaultWorkingDirectory is stale */
  int workingDirectoryExpirationInDays = null;
  TaskAgentPoolMaintenanceOptions();

  @override
  String toString() {
    return 'TaskAgentPoolMaintenanceOptions[workingDirectoryExpirationInDays=$workingDirectoryExpirationInDays, ]';
  }

  TaskAgentPoolMaintenanceOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['workingDirectoryExpirationInDays'] == null) {
      workingDirectoryExpirationInDays = null;
    } else {
          workingDirectoryExpirationInDays = json['workingDirectoryExpirationInDays'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (workingDirectoryExpirationInDays != null)
      json['workingDirectoryExpirationInDays'] = workingDirectoryExpirationInDays;
    return json;
  }

  static List<TaskAgentPoolMaintenanceOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentPoolMaintenanceOptions>() : json.map((value) => TaskAgentPoolMaintenanceOptions.fromJson(value)).toList();
  }

  static Map<String, TaskAgentPoolMaintenanceOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentPoolMaintenanceOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentPoolMaintenanceOptions.fromJson(value));
    }
    return map;
  }
}

