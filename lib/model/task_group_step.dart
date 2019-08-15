part of azure_devops_sdk.api;

class TaskGroupStep {
  /* Gets or sets as 'true' to run the task always, 'false' otherwise. */
  bool alwaysRun = null;
  /* Gets or sets condition for the task. */
  String condition = null;
  /* Gets or sets as 'true' to continue on error, 'false' otherwise. */
  bool continueOnError = null;
  /* Gets or sets the display name. */
  String displayName = null;
  /* Gets or sets as task is enabled or not. */
  bool enabled = null;
  /* Gets dictionary of environment variables. */
  Map<String, String> environment = {};
  /* Gets or sets dictionary of inputs. */
  Map<String, String> inputs = {};
  
  TaskDefinitionReference task = null;
  /* Gets or sets the maximum time, in minutes, that a task is allowed to execute on agent before being cancelled by server. A zero value indicates an infinite timeout. */
  int timeoutInMinutes = null;
  TaskGroupStep();

  @override
  String toString() {
    return 'TaskGroupStep[alwaysRun=$alwaysRun, condition=$condition, continueOnError=$continueOnError, displayName=$displayName, enabled=$enabled, environment=$environment, inputs=$inputs, task=$task, timeoutInMinutes=$timeoutInMinutes, ]';
  }

  TaskGroupStep.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['alwaysRun'] == null) {
      alwaysRun = null;
    } else {
          alwaysRun = json['alwaysRun'];
    }
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
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['enabled'] == null) {
      enabled = null;
    } else {
          enabled = json['enabled'];
    }
    if (json['environment'] == null) {
      environment = null;
    } else {
          environment = (json['environment'] as Map).cast<String, String>();
    }
    if (json['inputs'] == null) {
      inputs = null;
    } else {
          inputs = (json['inputs'] as Map).cast<String, String>();
    }
    if (json['task'] == null) {
      task = null;
    } else {
      task = TaskDefinitionReference.fromJson(json['task']);
    }
    if (json['timeoutInMinutes'] == null) {
      timeoutInMinutes = null;
    } else {
          timeoutInMinutes = json['timeoutInMinutes'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (alwaysRun != null)
      json['alwaysRun'] = alwaysRun;
    if (condition != null)
      json['condition'] = condition;
    if (continueOnError != null)
      json['continueOnError'] = continueOnError;
    if (displayName != null)
      json['displayName'] = displayName;
    if (enabled != null)
      json['enabled'] = enabled;
    if (environment != null)
      json['environment'] = environment;
    if (inputs != null)
      json['inputs'] = inputs;
    if (task != null)
      json['task'] = task;
    if (timeoutInMinutes != null)
      json['timeoutInMinutes'] = timeoutInMinutes;
    return json;
  }

  static List<TaskGroupStep> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskGroupStep>() : json.map((value) => TaskGroupStep.fromJson(value)).toList();
  }

  static Map<String, TaskGroupStep> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskGroupStep>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskGroupStep.fromJson(value));
    }
    return map;
  }
}

