part of azure_devops_sdk.api;

class NotificationDiagnosticLogMessage {
  /* Corresponds to .Net TraceLevel enumeration */
  int level = null;
  
  String message = null;
  
  String time = null;
  NotificationDiagnosticLogMessage();

  @override
  String toString() {
    return 'NotificationDiagnosticLogMessage[level=$level, message=$message, time=$time, ]';
  }

  NotificationDiagnosticLogMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['level'] == null) {
      level = null;
    } else {
          level = json['level'];
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['time'] == null) {
      time = null;
    } else {
          time = json['time'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (level != null)
      json['level'] = level;
    if (message != null)
      json['message'] = message;
    if (time != null)
      json['time'] = time;
    return json;
  }

  static List<NotificationDiagnosticLogMessage> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationDiagnosticLogMessage>() : json.map((value) => NotificationDiagnosticLogMessage.fromJson(value)).toList();
  }

  static Map<String, NotificationDiagnosticLogMessage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationDiagnosticLogMessage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationDiagnosticLogMessage.fromJson(value));
    }
    return map;
  }
}

