part of azure_devops_sdk.api;

class WorkItemTypeBehavior {
  
  WorkItemBehaviorReference behavior = null;
  /* If true the work item type is the default work item type in the behavior */
  bool isDefault = null;
  /* URL of the work item type behavior */
  String url = null;
  WorkItemTypeBehavior();

  @override
  String toString() {
    return 'WorkItemTypeBehavior[behavior=$behavior, isDefault=$isDefault, url=$url, ]';
  }

  WorkItemTypeBehavior.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['behavior'] == null) {
      behavior = null;
    } else {
      behavior = WorkItemBehaviorReference.fromJson(json['behavior']);
    }
    if (json['isDefault'] == null) {
      isDefault = null;
    } else {
          isDefault = json['isDefault'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (behavior != null)
      json['behavior'] = behavior;
    if (isDefault != null)
      json['isDefault'] = isDefault;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WorkItemTypeBehavior> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTypeBehavior>() : json.map((value) => WorkItemTypeBehavior.fromJson(value)).toList();
  }

  static Map<String, WorkItemTypeBehavior> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTypeBehavior>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTypeBehavior.fromJson(value));
    }
    return map;
  }
}

