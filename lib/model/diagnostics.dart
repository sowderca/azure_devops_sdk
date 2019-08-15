part of azure_devops_sdk.api;

class Diagnostics {
  
  String diagnosticStoreConnectionString = null;
  
  DateTime lastModifiedTime = null;
  
  String relativePathToDiagnosticFiles = null;
  Diagnostics();

  @override
  String toString() {
    return 'Diagnostics[diagnosticStoreConnectionString=$diagnosticStoreConnectionString, lastModifiedTime=$lastModifiedTime, relativePathToDiagnosticFiles=$relativePathToDiagnosticFiles, ]';
  }

  Diagnostics.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['diagnosticStoreConnectionString'] == null) {
      diagnosticStoreConnectionString = null;
    } else {
          diagnosticStoreConnectionString = json['diagnosticStoreConnectionString'];
    }
    if (json['lastModifiedTime'] == null) {
      lastModifiedTime = null;
    } else {
      lastModifiedTime = DateTime.parse(json['lastModifiedTime']);
    }
    if (json['relativePathToDiagnosticFiles'] == null) {
      relativePathToDiagnosticFiles = null;
    } else {
          relativePathToDiagnosticFiles = json['relativePathToDiagnosticFiles'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (diagnosticStoreConnectionString != null)
      json['diagnosticStoreConnectionString'] = diagnosticStoreConnectionString;
    if (lastModifiedTime != null)
      json['lastModifiedTime'] = lastModifiedTime == null ? null : lastModifiedTime.toUtc().toIso8601String();
    if (relativePathToDiagnosticFiles != null)
      json['relativePathToDiagnosticFiles'] = relativePathToDiagnosticFiles;
    return json;
  }

  static List<Diagnostics> listFromJson(List<dynamic> json) {
    return json == null ? List<Diagnostics>() : json.map((value) => Diagnostics.fromJson(value)).toList();
  }

  static Map<String, Diagnostics> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Diagnostics>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Diagnostics.fromJson(value));
    }
    return map;
  }
}

