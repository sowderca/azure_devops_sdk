part of azure_devops_sdk.api;

class TaskOrchestrationPlan {
  /* The type of the plan. */
  int orchestrationType = null;
  /* The ID of the plan. */
  String planId = null;
  TaskOrchestrationPlan();

  @override
  String toString() {
    return 'TaskOrchestrationPlan[orchestrationType=$orchestrationType, planId=$planId, ]';
  }

  TaskOrchestrationPlan.fromJson(Map<String, dynamic> json) {
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

  static List<TaskOrchestrationPlan> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskOrchestrationPlan>() : json.map((value) => TaskOrchestrationPlan.fromJson(value)).toList();
  }

  static Map<String, TaskOrchestrationPlan> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskOrchestrationPlan>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskOrchestrationPlan.fromJson(value));
    }
    return map;
  }
}

