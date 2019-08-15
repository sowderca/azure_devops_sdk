part of azure_devops_sdk.api;

class WorkItemStateResultModel {
  /* Work item state color. */
  String color = null;
  /* Work item state customization type. */
  String customizationType = null;
  //enum customizationTypeEnum {  system,  inherited,  custom,  };{
  /* If the Work item state is hidden. */
  bool hidden = null;
  /* Id of the Workitemstate. */
  String id = null;
  /* Work item state name. */
  String name = null;
  /* Work item state order. */
  int order = null;
  /* Work item state statecategory. */
  String stateCategory = null;
  /* Work item state url. */
  String url = null;
  WorkItemStateResultModel();

  @override
  String toString() {
    return 'WorkItemStateResultModel[color=$color, customizationType=$customizationType, hidden=$hidden, id=$id, name=$name, order=$order, stateCategory=$stateCategory, url=$url, ]';
  }

  WorkItemStateResultModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['color'] == null) {
      color = null;
    } else {
          color = json['color'];
    }
    if (json['customizationType'] == null) {
      customizationType = null;
    } else {
          customizationType = json['customizationType'];
    }
    if (json['hidden'] == null) {
      hidden = null;
    } else {
          hidden = json['hidden'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
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
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (color != null)
      json['color'] = color;
    if (customizationType != null)
      json['customizationType'] = customizationType;
    if (hidden != null)
      json['hidden'] = hidden;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (order != null)
      json['order'] = order;
    if (stateCategory != null)
      json['stateCategory'] = stateCategory;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WorkItemStateResultModel> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemStateResultModel>() : json.map((value) => WorkItemStateResultModel.fromJson(value)).toList();
  }

  static Map<String, WorkItemStateResultModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemStateResultModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemStateResultModel.fromJson(value));
    }
    return map;
  }
}

