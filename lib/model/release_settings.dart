part of azure_devops_sdk.api;

class ReleaseSettings {
  
  ComplianceSettings complianceSettings = null;
  
  RetentionSettings retentionSettings = null;
  ReleaseSettings();

  @override
  String toString() {
    return 'ReleaseSettings[complianceSettings=$complianceSettings, retentionSettings=$retentionSettings, ]';
  }

  ReleaseSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['complianceSettings'] == null) {
      complianceSettings = null;
    } else {
      complianceSettings = ComplianceSettings.fromJson(json['complianceSettings']);
    }
    if (json['retentionSettings'] == null) {
      retentionSettings = null;
    } else {
      retentionSettings = RetentionSettings.fromJson(json['retentionSettings']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (complianceSettings != null)
      json['complianceSettings'] = complianceSettings;
    if (retentionSettings != null)
      json['retentionSettings'] = retentionSettings;
    return json;
  }

  static List<ReleaseSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseSettings>() : json.map((value) => ReleaseSettings.fromJson(value)).toList();
  }

  static Map<String, ReleaseSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseSettings.fromJson(value));
    }
    return map;
  }
}

