part of azure_devops_sdk.api;

class WorkItemTrackingReference {
  
  String url = null;
  WorkItemTrackingReference();

  @override
  String toString() {
    return 'WorkItemTrackingReference[url=$url, ]';
  }

  WorkItemTrackingReference.fromJson(Map<String, dynamic> json) {
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

  static List<WorkItemTrackingReference> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTrackingReference>() : json.map((value) => WorkItemTrackingReference.fromJson(value)).toList();
  }

  static Map<String, WorkItemTrackingReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTrackingReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTrackingReference.fromJson(value));
    }
    return map;
  }
}

