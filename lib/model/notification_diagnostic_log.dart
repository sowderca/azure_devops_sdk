part of azure_devops_sdk.api;

class NotificationDiagnosticLog {
  /* Identifier used for correlating to other diagnostics that may have been recorded elsewhere. */
  String activityId = null;
  
  String description = null;
  
  DateTime endTime = null;
  
  int errors = null;
  /* Unique instance identifier. */
  String id = null;
  
  String logType = null;
  
  List<NotificationDiagnosticLogMessage> messages = [];
  
  Map<String, String> properties = {};
  /* This identifier depends on the logType.  For notification jobs, this will be the job Id. For subscription tracing, this will be a special root Guid with the subscription Id encoded. */
  String source = null;
  
  DateTime startTime = null;
  
  int warnings = null;
  NotificationDiagnosticLog();

  @override
  String toString() {
    return 'NotificationDiagnosticLog[activityId=$activityId, description=$description, endTime=$endTime, errors=$errors, id=$id, logType=$logType, messages=$messages, properties=$properties, source=$source, startTime=$startTime, warnings=$warnings, ]';
  }

  NotificationDiagnosticLog.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['activityId'] == null) {
      activityId = null;
    } else {
          activityId = json['activityId'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['endTime'] == null) {
      endTime = null;
    } else {
      endTime = DateTime.parse(json['endTime']);
    }
    if (json['errors'] == null) {
      errors = null;
    } else {
          errors = json['errors'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['logType'] == null) {
      logType = null;
    } else {
          logType = json['logType'];
    }
    if (json['messages'] == null) {
      messages = null;
    } else {
      messages = NotificationDiagnosticLogMessage.listFromJson(json['messages']);
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
          properties = (json['properties'] as Map).cast<String, String>();
    }
    if (json['source'] == null) {
      source = null;
    } else {
          source = json['source'];
    }
    if (json['startTime'] == null) {
      startTime = null;
    } else {
      startTime = DateTime.parse(json['startTime']);
    }
    if (json['warnings'] == null) {
      warnings = null;
    } else {
          warnings = json['warnings'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (activityId != null)
      json['activityId'] = activityId;
    if (description != null)
      json['description'] = description;
    if (endTime != null)
      json['endTime'] = endTime == null ? null : endTime.toUtc().toIso8601String();
    if (errors != null)
      json['errors'] = errors;
    if (id != null)
      json['id'] = id;
    if (logType != null)
      json['logType'] = logType;
    if (messages != null)
      json['messages'] = messages;
    if (properties != null)
      json['properties'] = properties;
    if (source != null)
      json['source'] = source;
    if (startTime != null)
      json['startTime'] = startTime == null ? null : startTime.toUtc().toIso8601String();
    if (warnings != null)
      json['warnings'] = warnings;
    return json;
  }

  static List<NotificationDiagnosticLog> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationDiagnosticLog>() : json.map((value) => NotificationDiagnosticLog.fromJson(value)).toList();
  }

  static Map<String, NotificationDiagnosticLog> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationDiagnosticLog>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationDiagnosticLog.fromJson(value));
    }
    return map;
  }
}

