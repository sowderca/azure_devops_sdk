part of azure_devops_sdk.api;

class UpdateProcessWorkItemTypeRequest {
  /* Color of the work item type */
  String color = null;
  /* Description of the work item type */
  String description = null;
  /* Icon of the work item type */
  String icon = null;
  /* If set will disable the work item type */
  bool isDisabled = null;
  UpdateProcessWorkItemTypeRequest();

  @override
  String toString() {
    return 'UpdateProcessWorkItemTypeRequest[color=$color, description=$description, icon=$icon, isDisabled=$isDisabled, ]';
  }

  UpdateProcessWorkItemTypeRequest.fromJson(Map<String, dynamic> json) {
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
    if (json['isDisabled'] == null) {
      isDisabled = null;
    } else {
          isDisabled = json['isDisabled'];
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
    if (isDisabled != null)
      json['isDisabled'] = isDisabled;
    return json;
  }

  static List<UpdateProcessWorkItemTypeRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdateProcessWorkItemTypeRequest>() : json.map((value) => UpdateProcessWorkItemTypeRequest.fromJson(value)).toList();
  }

  static Map<String, UpdateProcessWorkItemTypeRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdateProcessWorkItemTypeRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdateProcessWorkItemTypeRequest.fromJson(value));
    }
    return map;
  }
}

