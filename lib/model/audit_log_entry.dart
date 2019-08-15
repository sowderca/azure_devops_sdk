part of azure_devops_sdk.api;

class AuditLogEntry {
  /* The action if for the event, i.e Git.CreateRepo, Project.RenameProject */
  String actionId = null;
  /* ActivityId */
  String activityId = null;
  /* The Actor's CUID */
  String actorCUID = null;
  /* The Actor's User Id */
  String actorUserId = null;
  /* Type of authentication used by the author */
  String authenticationMechanism = null;
  /* This allows us to group things together, like one user action that caused a cascade of event entries (project creation). */
  String correlationId = null;
  /* External data such as CUIDs, item names, etc. */
  Map<String, Object> data = {};
  /* EventId, should be unique */
  String id = null;
  /* IP Address where the event was originated */
  String ipAddress = null;
  /* The org, collection or project Id */
  String scopeId = null;
  /* The type of the scope, Enterprise, Organization or Project */
  String scopeType = null;
  //enum scopeTypeEnum {  unknown,  deployment,  enterprise,  organization,  project,  };{
  /* The time when the event occurred in UTC */
  DateTime timestamp = null;
  /* The user agent from the request */
  String userAgent = null;
  AuditLogEntry();

  @override
  String toString() {
    return 'AuditLogEntry[actionId=$actionId, activityId=$activityId, actorCUID=$actorCUID, actorUserId=$actorUserId, authenticationMechanism=$authenticationMechanism, correlationId=$correlationId, data=$data, id=$id, ipAddress=$ipAddress, scopeId=$scopeId, scopeType=$scopeType, timestamp=$timestamp, userAgent=$userAgent, ]';
  }

  AuditLogEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actionId'] == null) {
      actionId = null;
    } else {
          actionId = json['actionId'];
    }
    if (json['activityId'] == null) {
      activityId = null;
    } else {
          activityId = json['activityId'];
    }
    if (json['actorCUID'] == null) {
      actorCUID = null;
    } else {
          actorCUID = json['actorCUID'];
    }
    if (json['actorUserId'] == null) {
      actorUserId = null;
    } else {
          actorUserId = json['actorUserId'];
    }
    if (json['authenticationMechanism'] == null) {
      authenticationMechanism = null;
    } else {
          authenticationMechanism = json['authenticationMechanism'];
    }
    if (json['correlationId'] == null) {
      correlationId = null;
    } else {
          correlationId = json['correlationId'];
    }
    if (json['data'] == null) {
      data = null;
    } else {
      data = Object.mapFromJson(json['data']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['ipAddress'] == null) {
      ipAddress = null;
    } else {
          ipAddress = json['ipAddress'];
    }
    if (json['scopeId'] == null) {
      scopeId = null;
    } else {
          scopeId = json['scopeId'];
    }
    if (json['scopeType'] == null) {
      scopeType = null;
    } else {
          scopeType = json['scopeType'];
    }
    if (json['timestamp'] == null) {
      timestamp = null;
    } else {
      timestamp = DateTime.parse(json['timestamp']);
    }
    if (json['userAgent'] == null) {
      userAgent = null;
    } else {
          userAgent = json['userAgent'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actionId != null)
      json['actionId'] = actionId;
    if (activityId != null)
      json['activityId'] = activityId;
    if (actorCUID != null)
      json['actorCUID'] = actorCUID;
    if (actorUserId != null)
      json['actorUserId'] = actorUserId;
    if (authenticationMechanism != null)
      json['authenticationMechanism'] = authenticationMechanism;
    if (correlationId != null)
      json['correlationId'] = correlationId;
    if (data != null)
      json['data'] = data;
    if (id != null)
      json['id'] = id;
    if (ipAddress != null)
      json['ipAddress'] = ipAddress;
    if (scopeId != null)
      json['scopeId'] = scopeId;
    if (scopeType != null)
      json['scopeType'] = scopeType;
    if (timestamp != null)
      json['timestamp'] = timestamp == null ? null : timestamp.toUtc().toIso8601String();
    if (userAgent != null)
      json['userAgent'] = userAgent;
    return json;
  }

  static List<AuditLogEntry> listFromJson(List<dynamic> json) {
    return json == null ? List<AuditLogEntry>() : json.map((value) => AuditLogEntry.fromJson(value)).toList();
  }

  static Map<String, AuditLogEntry> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AuditLogEntry>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AuditLogEntry.fromJson(value));
    }
    return map;
  }
}

