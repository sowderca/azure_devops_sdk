part of azure_devops_sdk.api;

class TaskOrchestrationPlanGroup {
  
  String planGroup = null;
  
  ProjectReference project = null;
  
  List<TaskAgentJobRequest> runningRequests = [];
  TaskOrchestrationPlanGroup();

  @override
  String toString() {
    return 'TaskOrchestrationPlanGroup[planGroup=$planGroup, project=$project, runningRequests=$runningRequests, ]';
  }

  TaskOrchestrationPlanGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['planGroup'] == null) {
      planGroup = null;
    } else {
          planGroup = json['planGroup'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = ProjectReference.fromJson(json['project']);
    }
    if (json['runningRequests'] == null) {
      runningRequests = null;
    } else {
      runningRequests = TaskAgentJobRequest.listFromJson(json['runningRequests']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (planGroup != null)
      json['planGroup'] = planGroup;
    if (project != null)
      json['project'] = project;
    if (runningRequests != null)
      json['runningRequests'] = runningRequests;
    return json;
  }

  static List<TaskOrchestrationPlanGroup> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskOrchestrationPlanGroup>() : json.map((value) => TaskOrchestrationPlanGroup.fromJson(value)).toList();
  }

  static Map<String, TaskOrchestrationPlanGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskOrchestrationPlanGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskOrchestrationPlanGroup.fromJson(value));
    }
    return map;
  }
}

