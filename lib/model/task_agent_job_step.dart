part of azure_devops_sdk.api;

class TaskAgentJobStep {
  
  String condition = null;
  
  bool continueOnError = null;
  
  bool enabled = null;
  
  Map<String, String> env = {};
  
  String id = null;
  
  Map<String, String> inputs = {};
  
  String name = null;
  
  TaskAgentJobTask task = null;
  
  int timeoutInMinutes = null;
  
  String type = null;
  //enum typeEnum {  task,  action,  };{
  TaskAgentJobStep();

  @override
  String toString() {
    return 'TaskAgentJobStep[condition=$condition, continueOnError=$continueOnError, enabled=$enabled, env=$env, id=$id, inputs=$inputs, name=$name, task=$task, timeoutInMinutes=$timeoutInMinutes, type=$type, ]';
  }

  TaskAgentJobStep.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['condition'] == null) {
      condition = null;
    } else {
          condition = json['condition'];
    }
    if (json['continueOnError'] == null) {
      continueOnError = null;
    } else {
          continueOnError = json['continueOnError'];
    }
    if (json['enabled'] == null) {
      enabled = null;
    } else {
          enabled = json['enabled'];
    }
    if (json['env'] == null) {
      env = null;
    } else {
          env = (json['env'] as Map).cast<String, String>();
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['inputs'] == null) {
      inputs = null;
    } else {
          inputs = (json['inputs'] as Map).cast<String, String>();
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['task'] == null) {
      task = null;
    } else {
      task = TaskAgentJobTask.fromJson(json['task']);
    }
    if (json['timeoutInMinutes'] == null) {
      timeoutInMinutes = null;
    } else {
          timeoutInMinutes = json['timeoutInMinutes'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (condition != null)
      json['condition'] = condition;
    if (continueOnError != null)
      json['continueOnError'] = continueOnError;
    if (enabled != null)
      json['enabled'] = enabled;
    if (env != null)
      json['env'] = env;
    if (id != null)
      json['id'] = id;
    if (inputs != null)
      json['inputs'] = inputs;
    if (name != null)
      json['name'] = name;
    if (task != null)
      json['task'] = task;
    if (timeoutInMinutes != null)
      json['timeoutInMinutes'] = timeoutInMinutes;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<TaskAgentJobStep> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentJobStep>() : json.map((value) => TaskAgentJobStep.fromJson(value)).toList();
  }

  static Map<String, TaskAgentJobStep> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentJobStep>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentJobStep.fromJson(value));
    }
    return map;
  }
}

