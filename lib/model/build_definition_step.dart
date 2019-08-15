part of azure_devops_sdk.api;

class BuildDefinitionStep {
  /* Indicates whether this step should run even if a previous step fails. */
  bool alwaysRun = null;
  /* A condition that determines whether this step should run. */
  String condition = null;
  /* Indicates whether the phase should continue even if this step fails. */
  bool continueOnError = null;
  /* The display name for this step. */
  String displayName = null;
  /* Indicates whether the step is enabled. */
  bool enabled = null;
  
  Map<String, String> environment = {};
  
  Map<String, String> inputs = {};
  /* The reference name for this step. */
  String refName = null;
  
  TaskDefinitionReference task = null;
  /* The time, in minutes, that this step is allowed to run. */
  int timeoutInMinutes = null;
  BuildDefinitionStep();

  @override
  String toString() {
    return 'BuildDefinitionStep[alwaysRun=$alwaysRun, condition=$condition, continueOnError=$continueOnError, displayName=$displayName, enabled=$enabled, environment=$environment, inputs=$inputs, refName=$refName, task=$task, timeoutInMinutes=$timeoutInMinutes, ]';
  }

  BuildDefinitionStep.fromJson(Map<String, dynamic> json) {
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
    if (json['refName'] == null) {
      refName = null;
    } else {
          refName = json['refName'];
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
    if (refName != null)
      json['refName'] = refName;
    if (task != null)
      json['task'] = task;
    if (timeoutInMinutes != null)
      json['timeoutInMinutes'] = timeoutInMinutes;
    return json;
  }

  static List<BuildDefinitionStep> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildDefinitionStep>() : json.map((value) => BuildDefinitionStep.fromJson(value)).toList();
  }

  static Map<String, BuildDefinitionStep> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildDefinitionStep>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildDefinitionStep.fromJson(value));
    }
    return map;
  }
}

