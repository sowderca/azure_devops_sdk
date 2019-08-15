part of azure_devops_sdk.api;

class WorkItemBehaviorReference {
  /* The ID of the reference behavior. */
  String id = null;
  /* The url of the reference behavior. */
  String url = null;
  WorkItemBehaviorReference();

  @override
  String toString() {
    return 'WorkItemBehaviorReference[id=$id, url=$url, ]';
  }

  WorkItemBehaviorReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (id != null)
      json['id'] = id;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WorkItemBehaviorReference> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemBehaviorReference>() : json.map((value) => WorkItemBehaviorReference.fromJson(value)).toList();
  }

  static Map<String, WorkItemBehaviorReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemBehaviorReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemBehaviorReference.fromJson(value));
    }
    return map;
  }
}

