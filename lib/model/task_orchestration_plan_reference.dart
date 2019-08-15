part of azure_devops_sdk.api;

class TaskOrchestrationPlanReference {
  /* The type of the plan. */
  int orchestrationType = null;
  /* The ID of the plan. */
  String planId = null;
  TaskOrchestrationPlanReference();

  @override
  String toString() {
    return 'TaskOrchestrationPlanReference[orchestrationType=$orchestrationType, planId=$planId, ]';
  }

  TaskOrchestrationPlanReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['orchestrationType'] == null) {
      orchestrationType = null;
    } else {
          orchestrationType = json['orchestrationType'];
    }
    if (json['planId'] == null) {
      planId = null;
    } else {
          planId = json['planId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (orchestrationType != null)
      json['orchestrationType'] = orchestrationType;
    if (planId != null)
      json['planId'] = planId;
    return json;
  }

  static List<TaskOrchestrationPlanReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskOrchestrationPlanReference>() : json.map((value) => TaskOrchestrationPlanReference.fromJson(value)).toList();
  }

  static Map<String, TaskOrchestrationPlanReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskOrchestrationPlanReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskOrchestrationPlanReference.fromJson(value));
    }
    return map;
  }
}

