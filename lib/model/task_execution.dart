part of azure_devops_sdk.api;

class TaskExecution {
  
  TaskReference execTask = null;
  /* If a task is going to run code, then this provides the type/script etc... information by platform. For example, it might look like. net45: { typeName: \"Microsoft.TeamFoundation.Automation.Tasks.PowerShellTask\", assemblyName: \"Microsoft.TeamFoundation.Automation.Tasks.PowerShell.dll\" } net20: { typeName: \"Microsoft.TeamFoundation.Automation.Tasks.PowerShellTask\", assemblyName: \"Microsoft.TeamFoundation.Automation.Tasks.PowerShell.dll\" } java: { jar: \"powershelltask.tasks.automation.teamfoundation.microsoft.com\", } node: { script: \"powershellhost.js\", } */
  Map<String, Map<String, String>> platformInstructions = {};
  TaskExecution();

  @override
  String toString() {
    return 'TaskExecution[execTask=$execTask, platformInstructions=$platformInstructions, ]';
  }

  TaskExecution.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['execTask'] == null) {
      execTask = null;
    } else {
      execTask = TaskReference.fromJson(json['execTask']);
    }
    if (json['platformInstructions'] == null) {
      platformInstructions = null;
    } else {
      platformInstructions = Map.mapFromJson(json['platformInstructions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (execTask != null)
      json['execTask'] = execTask;
    if (platformInstructions != null)
      json['platformInstructions'] = platformInstructions;
    return json;
  }

  static List<TaskExecution> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskExecution>() : json.map((value) => TaskExecution.fromJson(value)).toList();
  }

  static Map<String, TaskExecution> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskExecution>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskExecution.fromJson(value));
    }
    return map;
  }
}

