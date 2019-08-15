part of azure_devops_sdk.api;

class TaskAgentPoolMaintenanceJobTargetAgent {
  
  TaskAgentReference agent = null;
  
  int jobId = null;
  
  String result = null;
  //enum resultEnum {  succeeded,  failed,  canceled,  };{
  
  String status = null;
  //enum statusEnum {  inProgress,  completed,  cancelling,  queued,  };{
  TaskAgentPoolMaintenanceJobTargetAgent();

  @override
  String toString() {
    return 'TaskAgentPoolMaintenanceJobTargetAgent[agent=$agent, jobId=$jobId, result=$result, status=$status, ]';
  }

  TaskAgentPoolMaintenanceJobTargetAgent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agent'] == null) {
      agent = null;
    } else {
      agent = TaskAgentReference.fromJson(json['agent']);
    }
    if (json['jobId'] == null) {
      jobId = null;
    } else {
          jobId = json['jobId'];
    }
    if (json['result'] == null) {
      result = null;
    } else {
          result = json['result'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agent != null)
      json['agent'] = agent;
    if (jobId != null)
      json['jobId'] = jobId;
    if (result != null)
      json['result'] = result;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<TaskAgentPoolMaintenanceJobTargetAgent> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentPoolMaintenanceJobTargetAgent>() : json.map((value) => TaskAgentPoolMaintenanceJobTargetAgent.fromJson(value)).toList();
  }

  static Map<String, TaskAgentPoolMaintenanceJobTargetAgent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentPoolMaintenanceJobTargetAgent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentPoolMaintenanceJobTargetAgent.fromJson(value));
    }
    return map;
  }
}

