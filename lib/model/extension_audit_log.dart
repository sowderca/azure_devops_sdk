part of azure_devops_sdk.api;

class ExtensionAuditLog {
  /* Collection of audit log entries */
  List<ExtensionAuditLogEntry> entries = [];
  /* Extension that the change was made for */
  String extensionName = null;
  /* Publisher that the extension is part of */
  String publisherName = null;
  ExtensionAuditLog();

  @override
  String toString() {
    return 'ExtensionAuditLog[entries=$entries, extensionName=$extensionName, publisherName=$publisherName, ]';
  }

  ExtensionAuditLog.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['entries'] == null) {
      entries = null;
    } else {
      entries = ExtensionAuditLogEntry.listFromJson(json['entries']);
    }
    if (json['extensionName'] == null) {
      extensionName = null;
    } else {
          extensionName = json['extensionName'];
    }
    if (json['publisherName'] == null) {
      publisherName = null;
    } else {
          publisherName = json['publisherName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (entries != null)
      json['entries'] = entries;
    if (extensionName != null)
      json['extensionName'] = extensionName;
    if (publisherName != null)
      json['publisherName'] = publisherName;
    return json;
  }

  static List<ExtensionAuditLog> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionAuditLog>() : json.map((value) => ExtensionAuditLog.fromJson(value)).toList();
  }

  static Map<String, ExtensionAuditLog> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionAuditLog>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionAuditLog.fromJson(value));
    }
    return map;
  }
}

