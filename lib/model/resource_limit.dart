part of azure_devops_sdk.api;

class ResourceLimit {
  
  bool failedToReachAllProviders = null;
  
  String hostId = null;
  
  bool isHosted = null;
  
  bool isPremium = null;
  
  String parallelismTag = null;
  
  Map<String, String> resourceLimitsData = {};
  
  int totalCount = null;
  
  int totalMinutes = null;
  ResourceLimit();

  @override
  String toString() {
    return 'ResourceLimit[failedToReachAllProviders=$failedToReachAllProviders, hostId=$hostId, isHosted=$isHosted, isPremium=$isPremium, parallelismTag=$parallelismTag, resourceLimitsData=$resourceLimitsData, totalCount=$totalCount, totalMinutes=$totalMinutes, ]';
  }

  ResourceLimit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['failedToReachAllProviders'] == null) {
      failedToReachAllProviders = null;
    } else {
          failedToReachAllProviders = json['failedToReachAllProviders'];
    }
    if (json['hostId'] == null) {
      hostId = null;
    } else {
          hostId = json['hostId'];
    }
    if (json['isHosted'] == null) {
      isHosted = null;
    } else {
          isHosted = json['isHosted'];
    }
    if (json['isPremium'] == null) {
      isPremium = null;
    } else {
          isPremium = json['isPremium'];
    }
    if (json['parallelismTag'] == null) {
      parallelismTag = null;
    } else {
          parallelismTag = json['parallelismTag'];
    }
    if (json['resourceLimitsData'] == null) {
      resourceLimitsData = null;
    } else {
          resourceLimitsData = (json['resourceLimitsData'] as Map).cast<String, String>();
    }
    if (json['totalCount'] == null) {
      totalCount = null;
    } else {
          totalCount = json['totalCount'];
    }
    if (json['totalMinutes'] == null) {
      totalMinutes = null;
    } else {
          totalMinutes = json['totalMinutes'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (failedToReachAllProviders != null)
      json['failedToReachAllProviders'] = failedToReachAllProviders;
    if (hostId != null)
      json['hostId'] = hostId;
    if (isHosted != null)
      json['isHosted'] = isHosted;
    if (isPremium != null)
      json['isPremium'] = isPremium;
    if (parallelismTag != null)
      json['parallelismTag'] = parallelismTag;
    if (resourceLimitsData != null)
      json['resourceLimitsData'] = resourceLimitsData;
    if (totalCount != null)
      json['totalCount'] = totalCount;
    if (totalMinutes != null)
      json['totalMinutes'] = totalMinutes;
    return json;
  }

  static List<ResourceLimit> listFromJson(List<dynamic> json) {
    return json == null ? List<ResourceLimit>() : json.map((value) => ResourceLimit.fromJson(value)).toList();
  }

  static Map<String, ResourceLimit> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResourceLimit>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResourceLimit.fromJson(value));
    }
    return map;
  }
}

