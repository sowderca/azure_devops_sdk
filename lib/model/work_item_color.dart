part of azure_devops_sdk.api;

class WorkItemColor {
  
  String icon = null;
  
  String primaryColor = null;
  
  String workItemTypeName = null;
  WorkItemColor();

  @override
  String toString() {
    return 'WorkItemColor[icon=$icon, primaryColor=$primaryColor, workItemTypeName=$workItemTypeName, ]';
  }

  WorkItemColor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['icon'] == null) {
      icon = null;
    } else {
          icon = json['icon'];
    }
    if (json['primaryColor'] == null) {
      primaryColor = null;
    } else {
          primaryColor = json['primaryColor'];
    }
    if (json['workItemTypeName'] == null) {
      workItemTypeName = null;
    } else {
          workItemTypeName = json['workItemTypeName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (icon != null)
      json['icon'] = icon;
    if (primaryColor != null)
      json['primaryColor'] = primaryColor;
    if (workItemTypeName != null)
      json['workItemTypeName'] = workItemTypeName;
    return json;
  }

  static List<WorkItemColor> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemColor>() : json.map((value) => WorkItemColor.fromJson(value)).toList();
  }

  static Map<String, WorkItemColor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemColor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemColor.fromJson(value));
    }
    return map;
  }
}

