part of azure_devops_sdk.api;

class DiagnosticNotification {
  
  int eventId = null;
  
  String eventType = null;
  
  int id = null;
  
  List<NotificationDiagnosticLogMessage> messages = [];
  
  Map<String, DiagnosticRecipient> recipients = {};
  
  String result = null;
  
  Map<String, int> stats = {};
  
  String subscriptionId = null;
  DiagnosticNotification();

  @override
  String toString() {
    return 'DiagnosticNotification[eventId=$eventId, eventType=$eventType, id=$id, messages=$messages, recipients=$recipients, result=$result, stats=$stats, subscriptionId=$subscriptionId, ]';
  }

  DiagnosticNotification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['eventId'] == null) {
      eventId = null;
    } else {
          eventId = json['eventId'];
    }
    if (json['eventType'] == null) {
      eventType = null;
    } else {
          eventType = json['eventType'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['messages'] == null) {
      messages = null;
    } else {
      messages = NotificationDiagnosticLogMessage.listFromJson(json['messages']);
    }
    if (json['recipients'] == null) {
      recipients = null;
    } else {
      recipients = DiagnosticRecipient.mapFromJson(json['recipients']);
    }
    if (json['result'] == null) {
      result = null;
    } else {
          result = json['result'];
    }
    if (json['stats'] == null) {
      stats = null;
    } else {
          stats = (json['stats'] as Map).cast<String, int>();
    }
    if (json['subscriptionId'] == null) {
      subscriptionId = null;
    } else {
          subscriptionId = json['subscriptionId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (eventId != null)
      json['eventId'] = eventId;
    if (eventType != null)
      json['eventType'] = eventType;
    if (id != null)
      json['id'] = id;
    if (messages != null)
      json['messages'] = messages;
    if (recipients != null)
      json['recipients'] = recipients;
    if (result != null)
      json['result'] = result;
    if (stats != null)
      json['stats'] = stats;
    if (subscriptionId != null)
      json['subscriptionId'] = subscriptionId;
    return json;
  }

  static List<DiagnosticNotification> listFromJson(List<dynamic> json) {
    return json == null ? List<DiagnosticNotification>() : json.map((value) => DiagnosticNotification.fromJson(value)).toList();
  }

  static Map<String, DiagnosticNotification> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DiagnosticNotification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DiagnosticNotification.fromJson(value));
    }
    return map;
  }
}

