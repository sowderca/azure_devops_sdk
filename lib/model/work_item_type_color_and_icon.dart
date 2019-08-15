part of azure_devops_sdk.api;

class WorkItemTypeColorAndIcon {
  /* The color of the work item type in hex format. */
  String color = null;
  /* The work item type icon. */
  String icon = null;
  /* The name of the work item type. */
  String workItemTypeName = null;
  WorkItemTypeColorAndIcon();

  @override
  String toString() {
    return 'WorkItemTypeColorAndIcon[color=$color, icon=$icon, workItemTypeName=$workItemTypeName, ]';
  }

  WorkItemTypeColorAndIcon.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['color'] == null) {
      color = null;
    } else {
          color = json['color'];
    }
    if (json['icon'] == null) {
      icon = null;
    } else {
          icon = json['icon'];
    }
    if (json['workItemTypeName'] == null) {
      workItemTypeName = null;
    } else {
          workItemTypeName = json['workItemTypeName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (color != null)
      json['color'] = color;
    if (icon != null)
      json['icon'] = icon;
    if (workItemTypeName != null)
      json['workItemTypeName'] = workItemTypeName;
    return json;
  }

  static List<WorkItemTypeColorAndIcon> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTypeColorAndIcon>() : json.map((value) => WorkItemTypeColorAndIcon.fromJson(value)).toList();
  }

  static Map<String, WorkItemTypeColorAndIcon> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTypeColorAndIcon>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTypeColorAndIcon.fromJson(value));
    }
    return map;
  }
}

