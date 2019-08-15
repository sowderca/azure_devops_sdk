part of azure_devops_sdk.api;

class TaskOrchestrationPlanGroupsQueueMetrics {
  
  int count = null;
  
  String status = null;
  //enum statusEnum {  running,  queued,  all,  };{
  TaskOrchestrationPlanGroupsQueueMetrics();

  @override
  String toString() {
    return 'TaskOrchestrationPlanGroupsQueueMetrics[count=$count, status=$status, ]';
  }

  TaskOrchestrationPlanGroupsQueueMetrics.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<TaskOrchestrationPlanGroupsQueueMetrics> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskOrchestrationPlanGroupsQueueMetrics>() : json.map((value) => TaskOrchestrationPlanGroupsQueueMetrics.fromJson(value)).toList();
  }

  static Map<String, TaskOrchestrationPlanGroupsQueueMetrics> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskOrchestrationPlanGroupsQueueMetrics>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskOrchestrationPlanGroupsQueueMetrics.fromJson(value));
    }
    return map;
  }
}

