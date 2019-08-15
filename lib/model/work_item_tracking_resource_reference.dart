part of azure_devops_sdk.api;

class WorkItemTrackingResourceReference {
  
  String url = null;
  WorkItemTrackingResourceReference();

  @override
  String toString() {
    return 'WorkItemTrackingResourceReference[url=$url, ]';
  }

  WorkItemTrackingResourceReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WorkItemTrackingResourceReference> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTrackingResourceReference>() : json.map((value) => WorkItemTrackingResourceReference.fromJson(value)).toList();
  }

  static Map<String, WorkItemTrackingResourceReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTrackingResourceReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTrackingResourceReference.fromJson(value));
    }
    return map;
  }
}

