part of azure_devops_sdk.api;

class ResourceUsage {
  
  ResourceLimit resourceLimit = null;
  
  List<TaskAgentJobRequest> runningRequests = [];
  
  int usedCount = null;
  
  int usedMinutes = null;
  ResourceUsage();

  @override
  String toString() {
    return 'ResourceUsage[resourceLimit=$resourceLimit, runningRequests=$runningRequests, usedCount=$usedCount, usedMinutes=$usedMinutes, ]';
  }

  ResourceUsage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['resourceLimit'] == null) {
      resourceLimit = null;
    } else {
      resourceLimit = ResourceLimit.fromJson(json['resourceLimit']);
    }
    if (json['runningRequests'] == null) {
      runningRequests = null;
    } else {
      runningRequests = TaskAgentJobRequest.listFromJson(json['runningRequests']);
    }
    if (json['usedCount'] == null) {
      usedCount = null;
    } else {
          usedCount = json['usedCount'];
    }
    if (json['usedMinutes'] == null) {
      usedMinutes = null;
    } else {
          usedMinutes = json['usedMinutes'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (resourceLimit != null)
      json['resourceLimit'] = resourceLimit;
    if (runningRequests != null)
      json['runningRequests'] = runningRequests;
    if (usedCount != null)
      json['usedCount'] = usedCount;
    if (usedMinutes != null)
      json['usedMinutes'] = usedMinutes;
    return json;
  }

  static List<ResourceUsage> listFromJson(List<dynamic> json) {
    return json == null ? List<ResourceUsage>() : json.map((value) => ResourceUsage.fromJson(value)).toList();
  }

  static Map<String, ResourceUsage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResourceUsage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResourceUsage.fromJson(value));
    }
    return map;
  }
}

