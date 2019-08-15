part of azure_devops_sdk.api;

class WorkItemStateTransition {
  /* Gets a list of actions needed to transition to that state. */
  List<String> actions = [];
  /* Name of the next state. */
  String to = null;
  WorkItemStateTransition();

  @override
  String toString() {
    return 'WorkItemStateTransition[actions=$actions, to=$to, ]';
  }

  WorkItemStateTransition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actions'] == null) {
      actions = null;
    } else {
      actions = (json['actions'] as List).cast<String>();
    }
    if (json['to'] == null) {
      to = null;
    } else {
          to = json['to'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actions != null)
      json['actions'] = actions;
    if (to != null)
      json['to'] = to;
    return json;
  }

  static List<WorkItemStateTransition> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemStateTransition>() : json.map((value) => WorkItemStateTransition.fromJson(value)).toList();
  }

  static Map<String, WorkItemStateTransition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemStateTransition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemStateTransition.fromJson(value));
    }
    return map;
  }
}

