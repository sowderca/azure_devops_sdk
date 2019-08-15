part of azure_devops_sdk.api;

class WorkItemStateColor {
  /* Category of state */
  String category = null;
  /* Color value */
  String color = null;
  /* Work item type state name */
  String name = null;
  WorkItemStateColor();

  @override
  String toString() {
    return 'WorkItemStateColor[category=$category, color=$color, name=$name, ]';
  }

  WorkItemStateColor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['category'] == null) {
      category = null;
    } else {
          category = json['category'];
    }
    if (json['color'] == null) {
      color = null;
    } else {
          color = json['color'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (category != null)
      json['category'] = category;
    if (color != null)
      json['color'] = color;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<WorkItemStateColor> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemStateColor>() : json.map((value) => WorkItemStateColor.fromJson(value)).toList();
  }

  static Map<String, WorkItemStateColor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemStateColor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemStateColor.fromJson(value));
    }
    return map;
  }
}

