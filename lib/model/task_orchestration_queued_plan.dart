part of azure_devops_sdk.api;

class TaskOrchestrationQueuedPlan {
  
  DateTime assignTime = null;
  
  TaskOrchestrationOwner definition = null;
  
  TaskOrchestrationOwner owner = null;
  
  String planGroup = null;
  
  String planId = null;
  
  int poolId = null;
  
  int queuePosition = null;
  
  DateTime queueTime = null;
  
  String scopeIdentifier = null;
  TaskOrchestrationQueuedPlan();

  @override
  String toString() {
    return 'TaskOrchestrationQueuedPlan[assignTime=$assignTime, definition=$definition, owner=$owner, planGroup=$planGroup, planId=$planId, poolId=$poolId, queuePosition=$queuePosition, queueTime=$queueTime, scopeIdentifier=$scopeIdentifier, ]';
  }

  TaskOrchestrationQueuedPlan.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['assignTime'] == null) {
      assignTime = null;
    } else {
      assignTime = DateTime.parse(json['assignTime']);
    }
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
    if (json['planId'] == null) {
      planId = null;
    } else {
          planId = json['planId'];
    }
    if (json['poolId'] == null) {
      poolId = null;
    } else {
          poolId = json['poolId'];
    }
    if (json['queuePosition'] == null) {
      queuePosition = null;
    } else {
          queuePosition = json['queuePosition'];
    }
    if (json['queueTime'] == null) {
      queueTime = null;
    } else {
      queueTime = DateTime.parse(json['queueTime']);
    }
    if (json['scopeIdentifier'] == null) {
      scopeIdentifier = null;
    } else {
          scopeIdentifier = json['scopeIdentifier'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assignTime != null)
      json['assignTime'] = assignTime == null ? null : assignTime.toUtc().toIso8601String();
    if (definition != null)
      json['definition'] = definition;
    if (owner != null)
      json['owner'] = owner;
    if (planGroup != null)
      json['planGroup'] = planGroup;
    if (planId != null)
      json['planId'] = planId;
    if (poolId != null)
      json['poolId'] = poolId;
    if (queuePosition != null)
      json['queuePosition'] = queuePosition;
    if (queueTime != null)
      json['queueTime'] = queueTime == null ? null : queueTime.toUtc().toIso8601String();
    if (scopeIdentifier != null)
      json['scopeIdentifier'] = scopeIdentifier;
    return json;
  }

  static List<TaskOrchestrationQueuedPlan> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskOrchestrationQueuedPlan>() : json.map((value) => TaskOrchestrationQueuedPlan.fromJson(value)).toList();
  }

  static Map<String, TaskOrchestrationQueuedPlan> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskOrchestrationQueuedPlan>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskOrchestrationQueuedPlan.fromJson(value));
    }
    return map;
  }
}

