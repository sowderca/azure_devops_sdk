part of azure_devops_sdk.api;

class CreateProcessWorkItemTypeRequest {
  /* Color hexadecimal code to represent the work item type */
  String color = null;
  /* Description of the work item type */
  String description = null;
  /* Icon to represent the work item type */
  String icon = null;
  /* Parent work item type for work item type */
  String inheritsFrom = null;
  /* True if the work item type need to be disabled */
  bool isDisabled = null;
  /* Name of work item type */
  String name = null;
  CreateProcessWorkItemTypeRequest();

  @override
  String toString() {
    return 'CreateProcessWorkItemTypeRequest[color=$color, description=$description, icon=$icon, inheritsFrom=$inheritsFrom, isDisabled=$isDisabled, name=$name, ]';
  }

  CreateProcessWorkItemTypeRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['inheritsFrom'] == null) {
      inheritsFrom = null;
    } else {
          inheritsFrom = json['inheritsFrom'];
    }
    if (json['isDisabled'] == null) {
      isDisabled = null;
    } else {
          isDisabled = json['isDisabled'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (color != null)
      json['color'] = color;
    if (description != null)
      json['description'] = description;
    if (icon != null)
      json['icon'] = icon;
    if (inheritsFrom != null)
      json['inheritsFrom'] = inheritsFrom;
    if (isDisabled != null)
      json['isDisabled'] = isDisabled;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<CreateProcessWorkItemTypeRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateProcessWorkItemTypeRequest>() : json.map((value) => CreateProcessWorkItemTypeRequest.fromJson(value)).toList();
  }

  static Map<String, CreateProcessWorkItemTypeRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateProcessWorkItemTypeRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateProcessWorkItemTypeRequest.fromJson(value));
    }
    return map;
  }
}

