part of azure_devops_sdk.api;

class WorkItemTypeColor {
  /* Gets or sets the color of the primary. */
  String primaryColor = null;
  /* Gets or sets the color of the secondary. */
  String secondaryColor = null;
  /* The name of the work item type. */
  String workItemTypeName = null;
  WorkItemTypeColor();

  @override
  String toString() {
    return 'WorkItemTypeColor[primaryColor=$primaryColor, secondaryColor=$secondaryColor, workItemTypeName=$workItemTypeName, ]';
  }

  WorkItemTypeColor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['primaryColor'] == null) {
      primaryColor = null;
    } else {
          primaryColor = json['primaryColor'];
    }
    if (json['secondaryColor'] == null) {
      secondaryColor = null;
    } else {
          secondaryColor = json['secondaryColor'];
    }
    if (json['workItemTypeName'] == null) {
      workItemTypeName = null;
    } else {
          workItemTypeName = json['workItemTypeName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (primaryColor != null)
      json['primaryColor'] = primaryColor;
    if (secondaryColor != null)
      json['secondaryColor'] = secondaryColor;
    if (workItemTypeName != null)
      json['workItemTypeName'] = workItemTypeName;
    return json;
  }

  static List<WorkItemTypeColor> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTypeColor>() : json.map((value) => WorkItemTypeColor.fromJson(value)).toList();
  }

  static Map<String, WorkItemTypeColor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTypeColor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTypeColor.fromJson(value));
    }
    return map;
  }
}

