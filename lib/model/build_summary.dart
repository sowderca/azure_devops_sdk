part of azure_devops_sdk.api;

class BuildSummary {
  
  XamlBuildReference build = null;
  
  DateTime finishTime = null;
  
  bool keepForever = null;
  
  String quality = null;
  
  String reason = null;
  //enum reasonEnum {  none,  manual,  individualCI,  batchedCI,  schedule,  scheduleForced,  userCreated,  validateShelveset,  checkInShelveset,  pullRequest,  buildCompletion,  triggered,  all,  };{
  
  IdentityRef requestedFor = null;
  
  DateTime startTime = null;
  
  String status = null;
  //enum statusEnum {  none,  inProgress,  completed,  cancelling,  postponed,  notStarted,  all,  };{
  BuildSummary();

  @override
  String toString() {
    return 'BuildSummary[build=$build, finishTime=$finishTime, keepForever=$keepForever, quality=$quality, reason=$reason, requestedFor=$requestedFor, startTime=$startTime, status=$status, ]';
  }

  BuildSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['build'] == null) {
      build = null;
    } else {
      build = XamlBuildReference.fromJson(json['build']);
    }
    if (json['finishTime'] == null) {
      finishTime = null;
    } else {
      finishTime = DateTime.parse(json['finishTime']);
    }
    if (json['keepForever'] == null) {
      keepForever = null;
    } else {
          keepForever = json['keepForever'];
    }
    if (json['quality'] == null) {
      quality = null;
    } else {
          quality = json['quality'];
    }
    if (json['reason'] == null) {
      reason = null;
    } else {
          reason = json['reason'];
    }
    if (json['requestedFor'] == null) {
      requestedFor = null;
    } else {
      requestedFor = IdentityRef.fromJson(json['requestedFor']);
    }
    if (json['startTime'] == null) {
      startTime = null;
    } else {
      startTime = DateTime.parse(json['startTime']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (build != null)
      json['build'] = build;
    if (finishTime != null)
      json['finishTime'] = finishTime == null ? null : finishTime.toUtc().toIso8601String();
    if (keepForever != null)
      json['keepForever'] = keepForever;
    if (quality != null)
      json['quality'] = quality;
    if (reason != null)
      json['reason'] = reason;
    if (requestedFor != null)
      json['requestedFor'] = requestedFor;
    if (startTime != null)
      json['startTime'] = startTime == null ? null : startTime.toUtc().toIso8601String();
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<BuildSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildSummary>() : json.map((value) => BuildSummary.fromJson(value)).toList();
  }

  static Map<String, BuildSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildSummary.fromJson(value));
    }
    return map;
  }
}

