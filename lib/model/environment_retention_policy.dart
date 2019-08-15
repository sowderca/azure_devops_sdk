part of azure_devops_sdk.api;

class EnvironmentRetentionPolicy {
  /* Gets and sets the number of days to keep environment. */
  int daysToKeep = null;
  /* Gets and sets the number of releases to keep. */
  int releasesToKeep = null;
  /* Gets and sets as the build to be retained or not. */
  bool retainBuild = null;
  EnvironmentRetentionPolicy();

  @override
  String toString() {
    return 'EnvironmentRetentionPolicy[daysToKeep=$daysToKeep, releasesToKeep=$releasesToKeep, retainBuild=$retainBuild, ]';
  }

  EnvironmentRetentionPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['daysToKeep'] == null) {
      daysToKeep = null;
    } else {
          daysToKeep = json['daysToKeep'];
    }
    if (json['releasesToKeep'] == null) {
      releasesToKeep = null;
    } else {
          releasesToKeep = json['releasesToKeep'];
    }
    if (json['retainBuild'] == null) {
      retainBuild = null;
    } else {
          retainBuild = json['retainBuild'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (daysToKeep != null)
      json['daysToKeep'] = daysToKeep;
    if (releasesToKeep != null)
      json['releasesToKeep'] = releasesToKeep;
    if (retainBuild != null)
      json['retainBuild'] = retainBuild;
    return json;
  }

  static List<EnvironmentRetentionPolicy> listFromJson(List<dynamic> json) {
    return json == null ? List<EnvironmentRetentionPolicy>() : json.map((value) => EnvironmentRetentionPolicy.fromJson(value)).toList();
  }

  static Map<String, EnvironmentRetentionPolicy> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EnvironmentRetentionPolicy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EnvironmentRetentionPolicy.fromJson(value));
    }
    return map;
  }
}

