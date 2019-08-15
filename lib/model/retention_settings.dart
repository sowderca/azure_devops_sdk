part of azure_devops_sdk.api;

class RetentionSettings {
  /* Number of days to keep deleted releases. */
  int daysToKeepDeletedReleases = null;
  
  EnvironmentRetentionPolicy defaultEnvironmentRetentionPolicy = null;
  
  EnvironmentRetentionPolicy maximumEnvironmentRetentionPolicy = null;
  RetentionSettings();

  @override
  String toString() {
    return 'RetentionSettings[daysToKeepDeletedReleases=$daysToKeepDeletedReleases, defaultEnvironmentRetentionPolicy=$defaultEnvironmentRetentionPolicy, maximumEnvironmentRetentionPolicy=$maximumEnvironmentRetentionPolicy, ]';
  }

  RetentionSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['daysToKeepDeletedReleases'] == null) {
      daysToKeepDeletedReleases = null;
    } else {
          daysToKeepDeletedReleases = json['daysToKeepDeletedReleases'];
    }
    if (json['defaultEnvironmentRetentionPolicy'] == null) {
      defaultEnvironmentRetentionPolicy = null;
    } else {
      defaultEnvironmentRetentionPolicy = EnvironmentRetentionPolicy.fromJson(json['defaultEnvironmentRetentionPolicy']);
    }
    if (json['maximumEnvironmentRetentionPolicy'] == null) {
      maximumEnvironmentRetentionPolicy = null;
    } else {
      maximumEnvironmentRetentionPolicy = EnvironmentRetentionPolicy.fromJson(json['maximumEnvironmentRetentionPolicy']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (daysToKeepDeletedReleases != null)
      json['daysToKeepDeletedReleases'] = daysToKeepDeletedReleases;
    if (defaultEnvironmentRetentionPolicy != null)
      json['defaultEnvironmentRetentionPolicy'] = defaultEnvironmentRetentionPolicy;
    if (maximumEnvironmentRetentionPolicy != null)
      json['maximumEnvironmentRetentionPolicy'] = maximumEnvironmentRetentionPolicy;
    return json;
  }

  static List<RetentionSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<RetentionSettings>() : json.map((value) => RetentionSettings.fromJson(value)).toList();
  }

  static Map<String, RetentionSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RetentionSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RetentionSettings.fromJson(value));
    }
    return map;
  }
}

