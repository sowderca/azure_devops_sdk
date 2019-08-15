part of azure_devops_sdk.api;

class WorkItemNextStateOnTransition {
  /* Error code if there is no next state transition possible. */
  String errorCode = null;
  /* Work item ID. */
  int id = null;
  /* Error message if there is no next state transition possible. */
  String message = null;
  /* Name of the next state on transition. */
  String stateOnTransition = null;
  WorkItemNextStateOnTransition();

  @override
  String toString() {
    return 'WorkItemNextStateOnTransition[errorCode=$errorCode, id=$id, message=$message, stateOnTransition=$stateOnTransition, ]';
  }

  WorkItemNextStateOnTransition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['errorCode'] == null) {
      errorCode = null;
    } else {
          errorCode = json['errorCode'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['stateOnTransition'] == null) {
      stateOnTransition = null;
    } else {
          stateOnTransition = json['stateOnTransition'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (errorCode != null)
      json['errorCode'] = errorCode;
    if (id != null)
      json['id'] = id;
    if (message != null)
      json['message'] = message;
    if (stateOnTransition != null)
      json['stateOnTransition'] = stateOnTransition;
    return json;
  }

  static List<WorkItemNextStateOnTransition> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemNextStateOnTransition>() : json.map((value) => WorkItemNextStateOnTransition.fromJson(value)).toList();
  }

  static Map<String, WorkItemNextStateOnTransition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemNextStateOnTransition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemNextStateOnTransition.fromJson(value));
    }
    return map;
  }
}

