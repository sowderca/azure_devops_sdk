part of azure_devops_sdk.api;

class TaskOrchestrationPlanGroupReference {
  /* The name of the plan group. */
  String planGroup = null;
  /* The project ID. */
  String projectId = null;
  TaskOrchestrationPlanGroupReference();

  @override
  String toString() {
    return 'TaskOrchestrationPlanGroupReference[planGroup=$planGroup, projectId=$projectId, ]';
  }

  TaskOrchestrationPlanGroupReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['planGroup'] == null) {
      planGroup = null;
    } else {
          planGroup = json['planGroup'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (planGroup != null)
      json['planGroup'] = planGroup;
    if (projectId != null)
      json['projectId'] = projectId;
    return json;
  }

  static List<TaskOrchestrationPlanGroupReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskOrchestrationPlanGroupReference>() : json.map((value) => TaskOrchestrationPlanGroupReference.fromJson(value)).toList();
  }

  static Map<String, TaskOrchestrationPlanGroupReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskOrchestrationPlanGroupReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskOrchestrationPlanGroupReference.fromJson(value));
    }
    return map;
  }
}

