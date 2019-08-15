part of azure_devops_sdk.api;

class InstalledExtensionStateIssue {
  /* The error message */
  String message = null;
  /* Source of the installation issue, for example  \"Demands\" */
  String source = null;
  /* Installation issue type (Warning, Error) */
  String type = null;
  //enum typeEnum {  warning,  error,  };{
  InstalledExtensionStateIssue();

  @override
  String toString() {
    return 'InstalledExtensionStateIssue[message=$message, source=$source, type=$type, ]';
  }

  InstalledExtensionStateIssue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['source'] == null) {
      source = null;
    } else {
          source = json['source'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    if (source != null)
      json['source'] = source;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<InstalledExtensionStateIssue> listFromJson(List<dynamic> json) {
    return json == null ? List<InstalledExtensionStateIssue>() : json.map((value) => InstalledExtensionStateIssue.fromJson(value)).toList();
  }

  static Map<String, InstalledExtensionStateIssue> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InstalledExtensionStateIssue>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InstalledExtensionStateIssue.fromJson(value));
    }
    return map;
  }
}

