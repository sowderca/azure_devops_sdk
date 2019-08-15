part of azure_devops_sdk.api;

class ProcessingDiagnosticIdentity {
  
  String displayName = null;
  
  String emailAddress = null;
  
  String id = null;
  ProcessingDiagnosticIdentity();

  @override
  String toString() {
    return 'ProcessingDiagnosticIdentity[displayName=$displayName, emailAddress=$emailAddress, id=$id, ]';
  }

  ProcessingDiagnosticIdentity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['emailAddress'] == null) {
      emailAddress = null;
    } else {
          emailAddress = json['emailAddress'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (emailAddress != null)
      json['emailAddress'] = emailAddress;
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<ProcessingDiagnosticIdentity> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessingDiagnosticIdentity>() : json.map((value) => ProcessingDiagnosticIdentity.fromJson(value)).toList();
  }

  static Map<String, ProcessingDiagnosticIdentity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessingDiagnosticIdentity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessingDiagnosticIdentity.fromJson(value));
    }
    return map;
  }
}

