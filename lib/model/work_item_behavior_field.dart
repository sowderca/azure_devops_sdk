part of azure_devops_sdk.api;

class WorkItemBehaviorField {
  
  String behaviorFieldId = null;
  
  String id = null;
  
  String url = null;
  WorkItemBehaviorField();

  @override
  String toString() {
    return 'WorkItemBehaviorField[behaviorFieldId=$behaviorFieldId, id=$id, url=$url, ]';
  }

  WorkItemBehaviorField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['behaviorFieldId'] == null) {
      behaviorFieldId = null;
    } else {
          behaviorFieldId = json['behaviorFieldId'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (behaviorFieldId != null)
      json['behaviorFieldId'] = behaviorFieldId;
    if (id != null)
      json['id'] = id;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WorkItemBehaviorField> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemBehaviorField>() : json.map((value) => WorkItemBehaviorField.fromJson(value)).toList();
  }

  static Map<String, WorkItemBehaviorField> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemBehaviorField>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemBehaviorField.fromJson(value));
    }
    return map;
  }
}

