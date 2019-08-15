part of azure_devops_sdk.api;

class TaskOrchestrationQueuedPlanGroup {
  
  TaskOrchestrationOwner definition = null;
  
  TaskOrchestrationOwner owner = null;
  
  String planGroup = null;
  
  List<TaskOrchestrationQueuedPlan> plans = [];
  
  ProjectReference project = null;
  
  int queuePosition = null;
  TaskOrchestrationQueuedPlanGroup();

  @override
  String toString() {
    return 'TaskOrchestrationQueuedPlanGroup[definition=$definition, owner=$owner, planGroup=$planGroup, plans=$plans, project=$project, queuePosition=$queuePosition, ]';
  }

  TaskOrchestrationQueuedPlanGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['definition'] == null) {
      definition = null;
    } else {
      definition = TaskOrchestrationOwner.fromJson(json['definition']);
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
      owner = TaskOrchestrationOwner.fromJson(json['owner']);
    }
    if (json['planGroup'] == null) {
      planGroup = null;
    } else {
          planGroup = json['planGroup'];
    }
    if (json['plans'] == null) {
      plans = null;
    } else {
      plans = TaskOrchestrationQueuedPlan.listFromJson(json['plans']);
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = ProjectReference.fromJson(json['project']);
    }
    if (json['queuePosition'] == null) {
      queuePosition = null;
    } else {
          queuePosition = json['queuePosition'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (definition != null)
      json['definition'] = definition;
    if (owner != null)
      json['owner'] = owner;
    if (planGroup != null)
      json['planGroup'] = planGroup;
    if (plans != null)
      json['plans'] = plans;
    if (project != null)
      json['project'] = project;
    if (queuePosition != null)
      json['queuePosition'] = queuePosition;
    return json;
  }

  static List<TaskOrchestrationQueuedPlanGroup> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskOrchestrationQueuedPlanGroup>() : json.map((value) => TaskOrchestrationQueuedPlanGroup.fromJson(value)).toList();
  }

  static Map<String, TaskOrchestrationQueuedPlanGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskOrchestrationQueuedPlanGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskOrchestrationQueuedPlanGroup.fromJson(value));
    }
    return map;
  }
}

