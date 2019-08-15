part of azure_devops_sdk.api;

class TaskOrchestrationPlanGroupsStartedEvent {
  
  List<TaskOrchestrationPlanGroupReference> planGroups = [];
  TaskOrchestrationPlanGroupsStartedEvent();

  @override
  String toString() {
    return 'TaskOrchestrationPlanGroupsStartedEvent[planGroups=$planGroups, ]';
  }

  TaskOrchestrationPlanGroupsStartedEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['planGroups'] == null) {
      planGroups = null;
    } else {
      planGroups = TaskOrchestrationPlanGroupReference.listFromJson(json['planGroups']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (planGroups != null)
      json['planGroups'] = planGroups;
    return json;
  }

  static List<TaskOrchestrationPlanGroupsStartedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskOrchestrationPlanGroupsStartedEvent>() : json.map((value) => TaskOrchestrationPlanGroupsStartedEvent.fromJson(value)).toList();
  }

  static Map<String, TaskOrchestrationPlanGroupsStartedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskOrchestrationPlanGroupsStartedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskOrchestrationPlanGroupsStartedEvent.fromJson(value));
    }
    return map;
  }
}

