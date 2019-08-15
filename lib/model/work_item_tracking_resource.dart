part of azure_devops_sdk.api;

class WorkItemTrackingResource {
  
  String url = null;
  WorkItemTrackingResource();

  @override
  String toString() {
    return 'WorkItemTrackingResource[url=$url, ]';
  }

  WorkItemTrackingResource.fromJson(Map<String, dynamic> json) {
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

  static List<WorkItemTrackingResource> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTrackingResource>() : json.map((value) => WorkItemTrackingResource.fromJson(value)).toList();
  }

  static Map<String, WorkItemTrackingResource> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTrackingResource>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTrackingResource.fromJson(value));
    }
    return map;
  }
}

