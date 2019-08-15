part of azure_devops_sdk.api;

class ComplianceSettings {
  /* Scan the release definition for secrets */
  bool checkForCredentialsAndOtherSecrets = null;
  ComplianceSettings();

  @override
  String toString() {
    return 'ComplianceSettings[checkForCredentialsAndOtherSecrets=$checkForCredentialsAndOtherSecrets, ]';
  }

  ComplianceSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['checkForCredentialsAndOtherSecrets'] == null) {
      checkForCredentialsAndOtherSecrets = null;
    } else {
          checkForCredentialsAndOtherSecrets = json['checkForCredentialsAndOtherSecrets'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (checkForCredentialsAndOtherSecrets != null)
      json['checkForCredentialsAndOtherSecrets'] = checkForCredentialsAndOtherSecrets;
    return json;
  }

  static List<ComplianceSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<ComplianceSettings>() : json.map((value) => ComplianceSettings.fromJson(value)).toList();
  }

  static Map<String, ComplianceSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ComplianceSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ComplianceSettings.fromJson(value));
    }
    return map;
  }
}

