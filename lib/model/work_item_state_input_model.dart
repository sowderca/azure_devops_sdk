part of azure_devops_sdk.api;

class WorkItemStateInputModel {
  /* Color of the state */
  String color = null;
  /* Name of the state */
  String name = null;
  /* Order in which state should appear */
  int order = null;
  /* Category of the state */
  String stateCategory = null;
  WorkItemStateInputModel();

  @override
  String toString() {
    return 'WorkItemStateInputModel[color=$color, name=$name, order=$order, stateCategory=$stateCategory, ]';
  }

  WorkItemStateInputModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['order'] == null) {
      order = null;
    } else {
          order = json['order'];
    }
    if (json['stateCategory'] == null) {
      stateCategory = null;
    } else {
          stateCategory = json['stateCategory'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (color != null)
      json['color'] = color;
    if (name != null)
      json['name'] = name;
    if (order != null)
      json['order'] = order;
    if (stateCategory != null)
      json['stateCategory'] = stateCategory;
    return json;
  }

  static List<WorkItemStateInputModel> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemStateInputModel>() : json.map((value) => WorkItemStateInputModel.fromJson(value)).toList();
  }

  static Map<String, WorkItemStateInputModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemStateInputModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemStateInputModel.fromJson(value));
    }
    return map;
  }
}

