part of azure_devops_sdk.api;

class DiagnosticRecipient {
  
  DiagnosticIdentity recipient = null;
  
  String status = null;
  DiagnosticRecipient();

  @override
  String toString() {
    return 'DiagnosticRecipient[recipient=$recipient, status=$status, ]';
  }

  DiagnosticRecipient.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['recipient'] == null) {
      recipient = null;
    } else {
      recipient = DiagnosticIdentity.fromJson(json['recipient']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (recipient != null)
      json['recipient'] = recipient;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<DiagnosticRecipient> listFromJson(List<dynamic> json) {
    return json == null ? List<DiagnosticRecipient>() : json.map((value) => DiagnosticRecipient.fromJson(value)).toList();
  }

  static Map<String, DiagnosticRecipient> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DiagnosticRecipient>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DiagnosticRecipient.fromJson(value));
    }
    return map;
  }
}

