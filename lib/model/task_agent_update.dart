part of azure_devops_sdk.api;

class TaskAgentUpdate {
  /* Current state of this agent update. */
  String currentState = null;
  
  TaskAgentUpdateReason reason = null;
  
  IdentityRef requestedBy = null;
  /* Date on which this update was requested. */
  DateTime requestTime = null;
  
  PackageVersion sourceVersion = null;
  
  PackageVersion targetVersion = null;
  TaskAgentUpdate();

  @override
  String toString() {
    return 'TaskAgentUpdate[currentState=$currentState, reason=$reason, requestedBy=$requestedBy, requestTime=$requestTime, sourceVersion=$sourceVersion, targetVersion=$targetVersion, ]';
  }

  TaskAgentUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['currentState'] == null) {
      currentState = null;
    } else {
          currentState = json['currentState'];
    }
    if (json['reason'] == null) {
      reason = null;
    } else {
      reason = TaskAgentUpdateReason.fromJson(json['reason']);
    }
    if (json['requestedBy'] == null) {
      requestedBy = null;
    } else {
      requestedBy = IdentityRef.fromJson(json['requestedBy']);
    }
    if (json['requestTime'] == null) {
      requestTime = null;
    } else {
      requestTime = DateTime.parse(json['requestTime']);
    }
    if (json['sourceVersion'] == null) {
      sourceVersion = null;
    } else {
      sourceVersion = PackageVersion.fromJson(json['sourceVersion']);
    }
    if (json['targetVersion'] == null) {
      targetVersion = null;
    } else {
      targetVersion = PackageVersion.fromJson(json['targetVersion']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (currentState != null)
      json['currentState'] = currentState;
    if (reason != null)
      json['reason'] = reason;
    if (requestedBy != null)
      json['requestedBy'] = requestedBy;
    if (requestTime != null)
      json['requestTime'] = requestTime == null ? null : requestTime.toUtc().toIso8601String();
    if (sourceVersion != null)
      json['sourceVersion'] = sourceVersion;
    if (targetVersion != null)
      json['targetVersion'] = targetVersion;
    return json;
  }

  static List<TaskAgentUpdate> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentUpdate>() : json.map((value) => TaskAgentUpdate.fromJson(value)).toList();
  }

  static Map<String, TaskAgentUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentUpdate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentUpdate.fromJson(value));
    }
    return map;
  }
}

