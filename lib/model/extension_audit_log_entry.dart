part of azure_devops_sdk.api;

class ExtensionAuditLogEntry {
  /* Change that was made to extension */
  String auditAction = null;
  /* Date at which the change was made */
  DateTime auditDate = null;
  /* Extra information about the change */
  String comment = null;
  
  IdentityRef updatedBy = null;
  ExtensionAuditLogEntry();

  @override
  String toString() {
    return 'ExtensionAuditLogEntry[auditAction=$auditAction, auditDate=$auditDate, comment=$comment, updatedBy=$updatedBy, ]';
  }

  ExtensionAuditLogEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['auditAction'] == null) {
      auditAction = null;
    } else {
          auditAction = json['auditAction'];
    }
    if (json['auditDate'] == null) {
      auditDate = null;
    } else {
      auditDate = DateTime.parse(json['auditDate']);
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['updatedBy'] == null) {
      updatedBy = null;
    } else {
      updatedBy = IdentityRef.fromJson(json['updatedBy']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (auditAction != null)
      json['auditAction'] = auditAction;
    if (auditDate != null)
      json['auditDate'] = auditDate == null ? null : auditDate.toUtc().toIso8601String();
    if (comment != null)
      json['comment'] = comment;
    if (updatedBy != null)
      json['updatedBy'] = updatedBy;
    return json;
  }

  static List<ExtensionAuditLogEntry> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionAuditLogEntry>() : json.map((value) => ExtensionAuditLogEntry.fromJson(value)).toList();
  }

  static Map<String, ExtensionAuditLogEntry> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionAuditLogEntry>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionAuditLogEntry.fromJson(value));
    }
    return map;
  }
}

