part of azure_devops_sdk.api;

class MavenPomIssueManagement {
  
  String system = null;
  
  String url = null;
  MavenPomIssueManagement();

  @override
  String toString() {
    return 'MavenPomIssueManagement[system=$system, url=$url, ]';
  }

  MavenPomIssueManagement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['system'] == null) {
      system = null;
    } else {
          system = json['system'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (system != null)
      json['system'] = system;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<MavenPomIssueManagement> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPomIssueManagement>() : json.map((value) => MavenPomIssueManagement.fromJson(value)).toList();
  }

  static Map<String, MavenPomIssueManagement> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPomIssueManagement>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPomIssueManagement.fromJson(value));
    }
    return map;
  }
}

