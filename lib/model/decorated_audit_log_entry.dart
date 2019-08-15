part of azure_devops_sdk.api;

class DecoratedAuditLogEntry {
  /* The action if for the event, i.e Git.CreateRepo, Project.RenameProject */
  String actionId = null;
  /* ActivityId */
  String activityId = null;
  /* The Actor's CUID */
  String actorCUID = null;
  /* DisplayName of the user who initiated the action */
  String actorDisplayName = null;
  /* URL of Actor's Profile image */
  String actorImageUrl = null;
  /* The Actor's User Id */
  String actorUserId = null;
  /* Area of Azure DevOps the action occurred */
  String area = null;
  /* Type of authentication used by the actor */
  String authenticationMechanism = null;
  /* Type of action executed */
  String category = null;
  //enum categoryEnum {  unknown,  modify,  remove,  create,  access,  };{
  /* DisplayName of the category */
  String categoryDisplayName = null;
  /* This allows related audit entries to be grouped together. Generally this occurs when a single action causes a cascade of audit entries. For example, project creation. */
  String correlationId = null;
  /* External data such as CUIDs, item names, etc. */
  Map<String, Object> data = {};
  /* Decorated details */
  String details = null;
  /* EventId - Needs to be unique per service */
  String id = null;
  /* IP Address where the event was originated */
  String ipAddress = null;
  /* DisplayName of the scope */
  String scopeDisplayName = null;
  /* The organization or project Id */
  String scopeId = null;
  /* The type of the scope, Organization or Project */
  String scopeType = null;
  //enum scopeTypeEnum {  unknown,  deployment,  enterprise,  organization,  project,  };{
  /* The time when the event occurred in UTC */
  DateTime timestamp = null;
  /* The user agent from the request */
  String userAgent = null;
  DecoratedAuditLogEntry();

  @override
  String toString() {
    return 'DecoratedAuditLogEntry[actionId=$actionId, activityId=$activityId, actorCUID=$actorCUID, actorDisplayName=$actorDisplayName, actorImageUrl=$actorImageUrl, actorUserId=$actorUserId, area=$area, authenticationMechanism=$authenticationMechanism, category=$category, categoryDisplayName=$categoryDisplayName, correlationId=$correlationId, data=$data, details=$details, id=$id, ipAddress=$ipAddress, scopeDisplayName=$scopeDisplayName, scopeId=$scopeId, scopeType=$scopeType, timestamp=$timestamp, userAgent=$userAgent, ]';
  }

  DecoratedAuditLogEntry.fromJson(Map<String, dynamic> json) {
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
    if (json['actorDisplayName'] == null) {
      actorDisplayName = null;
    } else {
          actorDisplayName = json['actorDisplayName'];
    }
    if (json['actorImageUrl'] == null) {
      actorImageUrl = null;
    } else {
          actorImageUrl = json['actorImageUrl'];
    }
    if (json['actorUserId'] == null) {
      actorUserId = null;
    } else {
          actorUserId = json['actorUserId'];
    }
    if (json['area'] == null) {
      area = null;
    } else {
          area = json['area'];
    }
    if (json['authenticationMechanism'] == null) {
      authenticationMechanism = null;
    } else {
          authenticationMechanism = json['authenticationMechanism'];
    }
    if (json['category'] == null) {
      category = null;
    } else {
          category = json['category'];
    }
    if (json['categoryDisplayName'] == null) {
      categoryDisplayName = null;
    } else {
          categoryDisplayName = json['categoryDisplayName'];
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
    if (json['details'] == null) {
      details = null;
    } else {
          details = json['details'];
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
    if (json['scopeDisplayName'] == null) {
      scopeDisplayName = null;
    } else {
          scopeDisplayName = json['scopeDisplayName'];
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
    if (actorDisplayName != null)
      json['actorDisplayName'] = actorDisplayName;
    if (actorImageUrl != null)
      json['actorImageUrl'] = actorImageUrl;
    if (actorUserId != null)
      json['actorUserId'] = actorUserId;
    if (area != null)
      json['area'] = area;
    if (authenticationMechanism != null)
      json['authenticationMechanism'] = authenticationMechanism;
    if (category != null)
      json['category'] = category;
    if (categoryDisplayName != null)
      json['categoryDisplayName'] = categoryDisplayName;
    if (correlationId != null)
      json['correlationId'] = correlationId;
    if (data != null)
      json['data'] = data;
    if (details != null)
      json['details'] = details;
    if (id != null)
      json['id'] = id;
    if (ipAddress != null)
      json['ipAddress'] = ipAddress;
    if (scopeDisplayName != null)
      json['scopeDisplayName'] = scopeDisplayName;
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

  static List<DecoratedAuditLogEntry> listFromJson(List<dynamic> json) {
    return json == null ? List<DecoratedAuditLogEntry>() : json.map((value) => DecoratedAuditLogEntry.fromJson(value)).toList();
  }

  static Map<String, DecoratedAuditLogEntry> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DecoratedAuditLogEntry>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DecoratedAuditLogEntry.fromJson(value));
    }
    return map;
  }
}

