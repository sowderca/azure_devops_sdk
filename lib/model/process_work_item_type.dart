part of azure_devops_sdk.api;

class ProcessWorkItemType {
  
  List<WorkItemTypeBehavior> behaviors = [];
  /* Color hexadecimal code to represent the work item type */
  String color = null;
  /* Indicates the type of customization on this work item System work item types are inherited from parent process but not modified Inherited work item types are modified work item that were inherited from parent process Custom work item types are work item types that were created in the current process */
  String customization = null;
  //enum customizationEnum {  system,  inherited,  custom,  };{
  /* Description of the work item type */
  String description = null;
  /* Icon to represent the work item typ */
  String icon = null;
  /* Reference name of the parent work item type */
  String inherits = null;
  /* Indicates if a work item type is disabled */
  bool isDisabled = null;
  
  FormLayout layout = null;
  /* Name of the work item type */
  String name = null;
  /* Reference name of work item type */
  String referenceName = null;
  
  List<WorkItemStateResultModel> states = [];
  /* Url of the work item type */
  String url = null;
  ProcessWorkItemType();

  @override
  String toString() {
    return 'ProcessWorkItemType[behaviors=$behaviors, color=$color, customization=$customization, description=$description, icon=$icon, inherits=$inherits, isDisabled=$isDisabled, layout=$layout, name=$name, referenceName=$referenceName, states=$states, url=$url, ]';
  }

  ProcessWorkItemType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['behaviors'] == null) {
      behaviors = null;
    } else {
      behaviors = WorkItemTypeBehavior.listFromJson(json['behaviors']);
    }
    if (json['color'] == null) {
      color = null;
    } else {
          color = json['color'];
    }
    if (json['customization'] == null) {
      customization = null;
    } else {
          customization = json['customization'];
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
    if (json['referenceName'] == null) {
      referenceName = null;
    } else {
          referenceName = json['referenceName'];
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
    if (color != null)
      json['color'] = color;
    if (customization != null)
      json['customization'] = customization;
    if (description != null)
      json['description'] = description;
    if (icon != null)
      json['icon'] = icon;
    if (inherits != null)
      json['inherits'] = inherits;
    if (isDisabled != null)
      json['isDisabled'] = isDisabled;
    if (layout != null)
      json['layout'] = layout;
    if (name != null)
      json['name'] = name;
    if (referenceName != null)
      json['referenceName'] = referenceName;
    if (states != null)
      json['states'] = states;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ProcessWorkItemType> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessWorkItemType>() : json.map((value) => ProcessWorkItemType.fromJson(value)).toList();
  }

  static Map<String, ProcessWorkItemType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessWorkItemType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessWorkItemType.fromJson(value));
    }
    return map;
  }
}

