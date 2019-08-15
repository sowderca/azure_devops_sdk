part of azure_devops_sdk.api;

class DiagnosticIdentity {
  
  String displayName = null;
  
  String emailAddress = null;
  
  String id = null;
  DiagnosticIdentity();

  @override
  String toString() {
    return 'DiagnosticIdentity[displayName=$displayName, emailAddress=$emailAddress, id=$id, ]';
  }

  DiagnosticIdentity.fromJson(Map<String, dynamic> json) {
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

  static List<DiagnosticIdentity> listFromJson(List<dynamic> json) {
    return json == null ? List<DiagnosticIdentity>() : json.map((value) => DiagnosticIdentity.fromJson(value)).toList();
  }

  static Map<String, DiagnosticIdentity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DiagnosticIdentity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DiagnosticIdentity.fromJson(value));
    }
    return map;
  }
}

