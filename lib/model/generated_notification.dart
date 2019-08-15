part of azure_devops_sdk.api;

class GeneratedNotification {
  
  List<DiagnosticIdentity> recipients = [];
  GeneratedNotification();

  @override
  String toString() {
    return 'GeneratedNotification[recipients=$recipients, ]';
  }

  GeneratedNotification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['recipients'] == null) {
      recipients = null;
    } else {
      recipients = DiagnosticIdentity.listFromJson(json['recipients']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (recipients != null)
      json['recipients'] = recipients;
    return json;
  }

  static List<GeneratedNotification> listFromJson(List<dynamic> json) {
    return json == null ? List<GeneratedNotification>() : json.map((value) => GeneratedNotification.fromJson(value)).toList();
  }

  static Map<String, GeneratedNotification> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GeneratedNotification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GeneratedNotification.fromJson(value));
    }
    return map;
  }
}

