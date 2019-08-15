part of azure_devops_sdk.api;

class WorkflowTask {
  /* Gets or sets as the task always run or not. */
  bool alwaysRun = null;
  /* Gets or sets the task condition. */
  String condition = null;
  /* Gets or sets as the task continue run on error or not. */
  bool continueOnError = null;
  /* Gets or sets the task definition type. Example:- 'Agent', DeploymentGroup', 'Server' or 'ServerGate'. */
  String definitionType = null;
  /* Gets or sets as the task enabled or not. */
  bool enabled = null;
  /* Gets or sets the task environment variables. */
  Map<String, String> environment = {};
  /* Gets or sets the task inputs. */
  Map<String, String> inputs = {};
  /* Gets or sets the name of the task. */
  String name = null;
  /* Gets or sets the task override inputs. */
  Map<String, String> overrideInputs = {};
  /* Gets or sets the reference name of the task. */
  String refName = null;
  /* Gets or sets the ID of the task. */
  String taskId = null;
  /* Gets or sets the task timeout. */
  int timeoutInMinutes = null;
  /* Gets or sets the version of the task. */
  String version = null;
  WorkflowTask();

  @override
  String toString() {
    return 'WorkflowTask[alwaysRun=$alwaysRun, condition=$condition, continueOnError=$continueOnError, definitionType=$definitionType, enabled=$enabled, environment=$environment, inputs=$inputs, name=$name, overrideInputs=$overrideInputs, refName=$refName, taskId=$taskId, timeoutInMinutes=$timeoutInMinutes, version=$version, ]';
  }

  WorkflowTask.fromJson(Map<String, dynamic> json) {
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
    if (json['definitionType'] == null) {
      definitionType = null;
    } else {
          definitionType = json['definitionType'];
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
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['overrideInputs'] == null) {
      overrideInputs = null;
    } else {
          overrideInputs = (json['overrideInputs'] as Map).cast<String, String>();
    }
    if (json['refName'] == null) {
      refName = null;
    } else {
          refName = json['refName'];
    }
    if (json['taskId'] == null) {
      taskId = null;
    } else {
          taskId = json['taskId'];
    }
    if (json['timeoutInMinutes'] == null) {
      timeoutInMinutes = null;
    } else {
          timeoutInMinutes = json['timeoutInMinutes'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
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
    if (definitionType != null)
      json['definitionType'] = definitionType;
    if (enabled != null)
      json['enabled'] = enabled;
    if (environment != null)
      json['environment'] = environment;
    if (inputs != null)
      json['inputs'] = inputs;
    if (name != null)
      json['name'] = name;
    if (overrideInputs != null)
      json['overrideInputs'] = overrideInputs;
    if (refName != null)
      json['refName'] = refName;
    if (taskId != null)
      json['taskId'] = taskId;
    if (timeoutInMinutes != null)
      json['timeoutInMinutes'] = timeoutInMinutes;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<WorkflowTask> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkflowTask>() : json.map((value) => WorkflowTask.fromJson(value)).toList();
  }

  static Map<String, WorkflowTask> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkflowTask>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkflowTask.fromJson(value));
    }
    return map;
  }
}

