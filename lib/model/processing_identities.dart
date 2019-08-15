part of azure_devops_sdk.api;

class ProcessingIdentities {
  
  Map<String, ProcessingDiagnosticIdentity> excludedIdentities = {};
  
  Map<String, ProcessingDiagnosticIdentity> includedIdentities = {};
  
  List<NotificationDiagnosticLogMessage> messages = [];
  
  List<String> missingIdentities = [];
  
  Map<String, String> properties = {};
  ProcessingIdentities();

  @override
  String toString() {
    return 'ProcessingIdentities[excludedIdentities=$excludedIdentities, includedIdentities=$includedIdentities, messages=$messages, missingIdentities=$missingIdentities, properties=$properties, ]';
  }

  ProcessingIdentities.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['excludedIdentities'] == null) {
      excludedIdentities = null;
    } else {
      excludedIdentities = ProcessingDiagnosticIdentity.mapFromJson(json['excludedIdentities']);
    }
    if (json['includedIdentities'] == null) {
      includedIdentities = null;
    } else {
      includedIdentities = ProcessingDiagnosticIdentity.mapFromJson(json['includedIdentities']);
    }
    if (json['messages'] == null) {
      messages = null;
    } else {
      messages = NotificationDiagnosticLogMessage.listFromJson(json['messages']);
    }
    if (json['missingIdentities'] == null) {
      missingIdentities = null;
    } else {
      missingIdentities = (json['missingIdentities'] as List).cast<String>();
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
          properties = (json['properties'] as Map).cast<String, String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (excludedIdentities != null)
      json['excludedIdentities'] = excludedIdentities;
    if (includedIdentities != null)
      json['includedIdentities'] = includedIdentities;
    if (messages != null)
      json['messages'] = messages;
    if (missingIdentities != null)
      json['missingIdentities'] = missingIdentities;
    if (properties != null)
      json['properties'] = properties;
    return json;
  }

  static List<ProcessingIdentities> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessingIdentities>() : json.map((value) => ProcessingIdentities.fromJson(value)).toList();
  }

  static Map<String, ProcessingIdentities> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessingIdentities>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessingIdentities.fromJson(value));
    }
    return map;
  }
}

