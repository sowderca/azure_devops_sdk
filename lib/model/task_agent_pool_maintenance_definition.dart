part of azure_devops_sdk.api;

class TaskAgentPoolMaintenanceDefinition {
  /* Enable maintenance */
  bool enabled = null;
  /* Id */
  int id = null;
  /* Maintenance job timeout per agent */
  int jobTimeoutInMinutes = null;
  /* Max percentage of agents within a pool running maintenance job at given time */
  int maxConcurrentAgentsPercentage = null;
  
  TaskAgentPoolMaintenanceOptions options = null;
  
  TaskAgentPoolReference pool = null;
  
  TaskAgentPoolMaintenanceRetentionPolicy retentionPolicy = null;
  
  TaskAgentPoolMaintenanceSchedule scheduleSetting = null;
  TaskAgentPoolMaintenanceDefinition();

  @override
  String toString() {
    return 'TaskAgentPoolMaintenanceDefinition[enabled=$enabled, id=$id, jobTimeoutInMinutes=$jobTimeoutInMinutes, maxConcurrentAgentsPercentage=$maxConcurrentAgentsPercentage, options=$options, pool=$pool, retentionPolicy=$retentionPolicy, scheduleSetting=$scheduleSetting, ]';
  }

  TaskAgentPoolMaintenanceDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['enabled'] == null) {
      enabled = null;
    } else {
          enabled = json['enabled'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['jobTimeoutInMinutes'] == null) {
      jobTimeoutInMinutes = null;
    } else {
          jobTimeoutInMinutes = json['jobTimeoutInMinutes'];
    }
    if (json['maxConcurrentAgentsPercentage'] == null) {
      maxConcurrentAgentsPercentage = null;
    } else {
          maxConcurrentAgentsPercentage = json['maxConcurrentAgentsPercentage'];
    }
    if (json['options'] == null) {
      options = null;
    } else {
      options = TaskAgentPoolMaintenanceOptions.fromJson(json['options']);
    }
    if (json['pool'] == null) {
      pool = null;
    } else {
      pool = TaskAgentPoolReference.fromJson(json['pool']);
    }
    if (json['retentionPolicy'] == null) {
      retentionPolicy = null;
    } else {
      retentionPolicy = TaskAgentPoolMaintenanceRetentionPolicy.fromJson(json['retentionPolicy']);
    }
    if (json['scheduleSetting'] == null) {
      scheduleSetting = null;
    } else {
      scheduleSetting = TaskAgentPoolMaintenanceSchedule.fromJson(json['scheduleSetting']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (enabled != null)
      json['enabled'] = enabled;
    if (id != null)
      json['id'] = id;
    if (jobTimeoutInMinutes != null)
      json['jobTimeoutInMinutes'] = jobTimeoutInMinutes;
    if (maxConcurrentAgentsPercentage != null)
      json['maxConcurrentAgentsPercentage'] = maxConcurrentAgentsPercentage;
    if (options != null)
      json['options'] = options;
    if (pool != null)
      json['pool'] = pool;
    if (retentionPolicy != null)
      json['retentionPolicy'] = retentionPolicy;
    if (scheduleSetting != null)
      json['scheduleSetting'] = scheduleSetting;
    return json;
  }

  static List<TaskAgentPoolMaintenanceDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentPoolMaintenanceDefinition>() : json.map((value) => TaskAgentPoolMaintenanceDefinition.fromJson(value)).toList();
  }

  static Map<String, TaskAgentPoolMaintenanceDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentPoolMaintenanceDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentPoolMaintenanceDefinition.fromJson(value));
    }
    return map;
  }
}

