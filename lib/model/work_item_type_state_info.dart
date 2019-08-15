part of azure_devops_sdk.api;

class WorkItemTypeStateInfo {
  /* State name to state category map */
  Map<String, String> states = {};
  /* Work Item type name */
  String workItemTypeName = null;
  WorkItemTypeStateInfo();

  @override
  String toString() {
    return 'WorkItemTypeStateInfo[states=$states, workItemTypeName=$workItemTypeName, ]';
  }

  WorkItemTypeStateInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['states'] == null) {
      states = null;
    } else {
          states = (json['states'] as Map).cast<String, String>();
    }
    if (json['workItemTypeName'] == null) {
      workItemTypeName = null;
    } else {
          workItemTypeName = json['workItemTypeName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (states != null)
      json['states'] = states;
    if (workItemTypeName != null)
      json['workItemTypeName'] = workItemTypeName;
    return json;
  }

  static List<WorkItemTypeStateInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTypeStateInfo>() : json.map((value) => WorkItemTypeStateInfo.fromJson(value)).toList();
  }

  static Map<String, WorkItemTypeStateInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTypeStateInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTypeStateInfo.fromJson(value));
    }
    return map;
  }
}

