part of azure_devops_sdk.api;

class BuildSettings {
  /* The number of days to keep records of deleted builds. */
  int daysToKeepDeletedBuildsBeforeDestroy = null;
  
  RetentionPolicy defaultRetentionPolicy = null;
  
  RetentionPolicy maximumRetentionPolicy = null;
  BuildSettings();

  @override
  String toString() {
    return 'BuildSettings[daysToKeepDeletedBuildsBeforeDestroy=$daysToKeepDeletedBuildsBeforeDestroy, defaultRetentionPolicy=$defaultRetentionPolicy, maximumRetentionPolicy=$maximumRetentionPolicy, ]';
  }

  BuildSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['daysToKeepDeletedBuildsBeforeDestroy'] == null) {
      daysToKeepDeletedBuildsBeforeDestroy = null;
    } else {
          daysToKeepDeletedBuildsBeforeDestroy = json['daysToKeepDeletedBuildsBeforeDestroy'];
    }
    if (json['defaultRetentionPolicy'] == null) {
      defaultRetentionPolicy = null;
    } else {
      defaultRetentionPolicy = RetentionPolicy.fromJson(json['defaultRetentionPolicy']);
    }
    if (json['maximumRetentionPolicy'] == null) {
      maximumRetentionPolicy = null;
    } else {
      maximumRetentionPolicy = RetentionPolicy.fromJson(json['maximumRetentionPolicy']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (daysToKeepDeletedBuildsBeforeDestroy != null)
      json['daysToKeepDeletedBuildsBeforeDestroy'] = daysToKeepDeletedBuildsBeforeDestroy;
    if (defaultRetentionPolicy != null)
      json['defaultRetentionPolicy'] = defaultRetentionPolicy;
    if (maximumRetentionPolicy != null)
      json['maximumRetentionPolicy'] = maximumRetentionPolicy;
    return json;
  }

  static List<BuildSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildSettings>() : json.map((value) => BuildSettings.fromJson(value)).toList();
  }

  static Map<String, BuildSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildSettings.fromJson(value));
    }
    return map;
  }
}

