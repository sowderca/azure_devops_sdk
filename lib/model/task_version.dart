part of azure_devops_sdk.api;

class TaskVersion {
  
  bool isTest = null;
  
  int major = null;
  
  int minor = null;
  
  int patch = null;
  TaskVersion();

  @override
  String toString() {
    return 'TaskVersion[isTest=$isTest, major=$major, minor=$minor, patch=$patch, ]';
  }

  TaskVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isTest'] == null) {
      isTest = null;
    } else {
          isTest = json['isTest'];
    }
    if (json['major'] == null) {
      major = null;
    } else {
          major = json['major'];
    }
    if (json['minor'] == null) {
      minor = null;
    } else {
          minor = json['minor'];
    }
    if (json['patch'] == null) {
      patch = null;
    } else {
          patch = json['patch'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isTest != null)
      json['isTest'] = isTest;
    if (major != null)
      json['major'] = major;
    if (minor != null)
      json['minor'] = minor;
    if (patch != null)
      json['patch'] = patch;
    return json;
  }

  static List<TaskVersion> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskVersion>() : json.map((value) => TaskVersion.fromJson(value)).toList();
  }

  static Map<String, TaskVersion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskVersion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskVersion.fromJson(value));
    }
    return map;
  }
}

