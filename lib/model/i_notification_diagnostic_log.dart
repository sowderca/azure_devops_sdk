part of azure_devops_sdk.api;

class INotificationDiagnosticLog {
  
  String activityId = null;
  
  String description = null;
  
  DateTime endTime = null;
  
  String id = null;
  
  String logType = null;
  
  List<NotificationDiagnosticLogMessage> messages = [];
  
  Map<String, String> properties = {};
  
  String source = null;
  
  DateTime startTime = null;
  INotificationDiagnosticLog();

  @override
  String toString() {
    return 'INotificationDiagnosticLog[activityId=$activityId, description=$description, endTime=$endTime, id=$id, logType=$logType, messages=$messages, properties=$properties, source=$source, startTime=$startTime, ]';
  }

  INotificationDiagnosticLog.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (activityId != null)
      json['activityId'] = activityId;
    if (description != null)
      json['description'] = description;
    if (endTime != null)
      json['endTime'] = endTime == null ? null : endTime.toUtc().toIso8601String();
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
    return json;
  }

  static List<INotificationDiagnosticLog> listFromJson(List<dynamic> json) {
    return json == null ? List<INotificationDiagnosticLog>() : json.map((value) => INotificationDiagnosticLog.fromJson(value)).toList();
  }

  static Map<String, INotificationDiagnosticLog> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, INotificationDiagnosticLog>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = INotificationDiagnosticLog.fromJson(value));
    }
    return map;
  }
}

