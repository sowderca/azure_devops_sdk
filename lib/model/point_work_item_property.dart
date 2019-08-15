part of azure_devops_sdk.api;

class PointWorkItemProperty {
  /* key value pair of test point work item property. */
  Object workItem = null;
  PointWorkItemProperty();

  @override
  String toString() {
    return 'PointWorkItemProperty[workItem=$workItem, ]';
  }

  PointWorkItemProperty.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['workItem'] == null) {
      workItem = null;
    } else {
          workItem = json['workItem'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (workItem != null)
      json['workItem'] = workItem;
    return json;
  }

  static List<PointWorkItemProperty> listFromJson(List<dynamic> json) {
    return json == null ? List<PointWorkItemProperty>() : json.map((value) => PointWorkItemProperty.fromJson(value)).toList();
  }

  static Map<String, PointWorkItemProperty> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PointWorkItemProperty>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PointWorkItemProperty.fromJson(value));
    }
    return map;
  }
}

