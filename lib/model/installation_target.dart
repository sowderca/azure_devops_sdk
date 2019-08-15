part of azure_devops_sdk.api;

class InstallationTarget {
  
  String target = null;
  
  String targetVersion = null;
  InstallationTarget();

  @override
  String toString() {
    return 'InstallationTarget[target=$target, targetVersion=$targetVersion, ]';
  }

  InstallationTarget.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['target'] == null) {
      target = null;
    } else {
          target = json['target'];
    }
    if (json['targetVersion'] == null) {
      targetVersion = null;
    } else {
          targetVersion = json['targetVersion'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (target != null)
      json['target'] = target;
    if (targetVersion != null)
      json['targetVersion'] = targetVersion;
    return json;
  }

  static List<InstallationTarget> listFromJson(List<dynamic> json) {
    return json == null ? List<InstallationTarget>() : json.map((value) => InstallationTarget.fromJson(value)).toList();
  }

  static Map<String, InstallationTarget> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InstallationTarget>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InstallationTarget.fromJson(value));
    }
    return map;
  }
}

