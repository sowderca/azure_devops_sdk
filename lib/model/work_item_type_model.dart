part of azure_devops_sdk.api;

class WorkItemTypeModel {
  
  List<WorkItemTypeBehavior> behaviors = [];
  
  String class_ = null;
  //enum class_Enum {  system,  derived,  custom,  };{
  
  String color = null;
  
  String description = null;
  
  String icon = null;
  
  String id = null;
  /* Parent WIT Id/Internal ReferenceName that it inherits from */
  String inherits = null;
  
  bool isDisabled = null;
  
  FormLayout layout = null;
  
  String name = null;
  
  List<WorkItemStateResultModel> states = [];
  
  String url = null;
  WorkItemTypeModel();

  @override
  String toString() {
    return 'WorkItemTypeModel[behaviors=$behaviors, class_=$class_, color=$color, description=$description, icon=$icon, id=$id, inherits=$inherits, isDisabled=$isDisabled, layout=$layout, name=$name, states=$states, url=$url, ]';
  }

  WorkItemTypeModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['behaviors'] == null) {
      behaviors = null;
    } else {
      behaviors = WorkItemTypeBehavior.listFromJson(json['behaviors']);
    }
    if (json['class'] == null) {
      class_ = null;
    } else {
          class_ = json['class'];
    }
    if (json['color'] == null) {
      color = null;
    } else {
          color = json['color'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['icon'] == null) {
      icon = null;
    } else {
          icon = json['icon'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['inherits'] == null) {
      inherits = null;
    } else {
          inherits = json['inherits'];
    }
    if (json['isDisabled'] == null) {
      isDisabled = null;
    } else {
          isDisabled = json['isDisabled'];
    }
    if (json['layout'] == null) {
      layout = null;
    } else {
      layout = FormLayout.fromJson(json['layout']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['states'] == null) {
      states = null;
    } else {
      states = WorkItemStateResultModel.listFromJson(json['states']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (behaviors != null)
      json['behaviors'] = behaviors;
    if (class_ != null)
      json['class'] = class_;
    if (color != null)
      json['color'] = color;
    if (description != null)
      json['description'] = description;
    if (icon != null)
      json['icon'] = icon;
    if (id != null)
      json['id'] = id;
    if (inherits != null)
      json['inherits'] = inherits;
    if (isDisabled != null)
      json['isDisabled'] = isDisabled;
    if (layout != null)
      json['layout'] = layout;
    if (name != null)
      json['name'] = name;
    if (states != null)
      json['states'] = states;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WorkItemTypeModel> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTypeModel>() : json.map((value) => WorkItemTypeModel.fromJson(value)).toList();
  }

  static Map<String, WorkItemTypeModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTypeModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTypeModel.fromJson(value));
    }
    return map;
  }
}

