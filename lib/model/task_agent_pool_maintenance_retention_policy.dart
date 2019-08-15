part of azure_devops_sdk.api;

class TaskAgentPoolMaintenanceRetentionPolicy {
  /* Number of records to keep for maintenance job executed with this definition. */
  int numberOfHistoryRecordsToKeep = null;
  TaskAgentPoolMaintenanceRetentionPolicy();

  @override
  String toString() {
    return 'TaskAgentPoolMaintenanceRetentionPolicy[numberOfHistoryRecordsToKeep=$numberOfHistoryRecordsToKeep, ]';
  }

  TaskAgentPoolMaintenanceRetentionPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['numberOfHistoryRecordsToKeep'] == null) {
      numberOfHistoryRecordsToKeep = null;
    } else {
          numberOfHistoryRecordsToKeep = json['numberOfHistoryRecordsToKeep'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (numberOfHistoryRecordsToKeep != null)
      json['numberOfHistoryRecordsToKeep'] = numberOfHistoryRecordsToKeep;
    return json;
  }

  static List<TaskAgentPoolMaintenanceRetentionPolicy> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentPoolMaintenanceRetentionPolicy>() : json.map((value) => TaskAgentPoolMaintenanceRetentionPolicy.fromJson(value)).toList();
  }

  static Map<String, TaskAgentPoolMaintenanceRetentionPolicy> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentPoolMaintenanceRetentionPolicy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentPoolMaintenanceRetentionPolicy.fromJson(value));
    }
    return map;
  }
}

