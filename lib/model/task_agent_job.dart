part of azure_devops_sdk.api;

class TaskAgentJob {
  
  String container = null;
  
  String id = null;
  
  String name = null;
  
  Map<String, String> sidecarContainers = {};
  
  List<TaskAgentJobStep> steps = [];
  
  List<TaskAgentJobVariable> variables = [];
  TaskAgentJob();

  @override
  String toString() {
    return 'TaskAgentJob[container=$container, id=$id, name=$name, sidecarContainers=$sidecarContainers, steps=$steps, variables=$variables, ]';
  }

  TaskAgentJob.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['container'] == null) {
      container = null;
    } else {
          container = json['container'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['sidecarContainers'] == null) {
      sidecarContainers = null;
    } else {
          sidecarContainers = (json['sidecarContainers'] as Map).cast<String, String>();
    }
    if (json['steps'] == null) {
      steps = null;
    } else {
      steps = TaskAgentJobStep.listFromJson(json['steps']);
    }
    if (json['variables'] == null) {
      variables = null;
    } else {
      variables = TaskAgentJobVariable.listFromJson(json['variables']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (container != null)
      json['container'] = container;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (sidecarContainers != null)
      json['sidecarContainers'] = sidecarContainers;
    if (steps != null)
      json['steps'] = steps;
    if (variables != null)
      json['variables'] = variables;
    return json;
  }

  static List<TaskAgentJob> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentJob>() : json.map((value) => TaskAgentJob.fromJson(value)).toList();
  }

  static Map<String, TaskAgentJob> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentJob>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentJob.fromJson(value));
    }
    return map;
  }
}

