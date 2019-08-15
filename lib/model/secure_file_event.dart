part of azure_devops_sdk.api;

class SecureFileEvent {
  
  String eventType = null;
  
  String projectId = null;
  
  List<SecureFile> secureFiles = [];
  SecureFileEvent();

  @override
  String toString() {
    return 'SecureFileEvent[eventType=$eventType, projectId=$projectId, secureFiles=$secureFiles, ]';
  }

  SecureFileEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['eventType'] == null) {
      eventType = null;
    } else {
          eventType = json['eventType'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['secureFiles'] == null) {
      secureFiles = null;
    } else {
      secureFiles = SecureFile.listFromJson(json['secureFiles']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (eventType != null)
      json['eventType'] = eventType;
    if (projectId != null)
      json['projectId'] = projectId;
    if (secureFiles != null)
      json['secureFiles'] = secureFiles;
    return json;
  }

  static List<SecureFileEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<SecureFileEvent>() : json.map((value) => SecureFileEvent.fromJson(value)).toList();
  }

  static Map<String, SecureFileEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SecureFileEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SecureFileEvent.fromJson(value));
    }
    return map;
  }
}

