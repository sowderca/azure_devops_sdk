part of azure_devops_sdk.api;

class WorkItemTypeStateColors {
  /* Work item type state colors */
  List<WorkItemStateColor> stateColors = [];
  /* Work item type name */
  String workItemTypeName = null;
  WorkItemTypeStateColors();

  @override
  String toString() {
    return 'WorkItemTypeStateColors[stateColors=$stateColors, workItemTypeName=$workItemTypeName, ]';
  }

  WorkItemTypeStateColors.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['stateColors'] == null) {
      stateColors = null;
    } else {
      stateColors = WorkItemStateColor.listFromJson(json['stateColors']);
    }
    if (json['workItemTypeName'] == null) {
      workItemTypeName = null;
    } else {
          workItemTypeName = json['workItemTypeName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (stateColors != null)
      json['stateColors'] = stateColors;
    if (workItemTypeName != null)
      json['workItemTypeName'] = workItemTypeName;
    return json;
  }

  static List<WorkItemTypeStateColors> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTypeStateColors>() : json.map((value) => WorkItemTypeStateColors.fromJson(value)).toList();
  }

  static Map<String, WorkItemTypeStateColors> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTypeStateColors>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTypeStateColors.fromJson(value));
    }
    return map;
  }
}

