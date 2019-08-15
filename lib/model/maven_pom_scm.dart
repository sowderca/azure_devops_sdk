part of azure_devops_sdk.api;

class MavenPomScm {
  
  String connection = null;
  
  String developerConnection = null;
  
  String tag = null;
  
  String url = null;
  MavenPomScm();

  @override
  String toString() {
    return 'MavenPomScm[connection=$connection, developerConnection=$developerConnection, tag=$tag, url=$url, ]';
  }

  MavenPomScm.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['connection'] == null) {
      connection = null;
    } else {
          connection = json['connection'];
    }
    if (json['developerConnection'] == null) {
      developerConnection = null;
    } else {
          developerConnection = json['developerConnection'];
    }
    if (json['tag'] == null) {
      tag = null;
    } else {
          tag = json['tag'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (connection != null)
      json['connection'] = connection;
    if (developerConnection != null)
      json['developerConnection'] = developerConnection;
    if (tag != null)
      json['tag'] = tag;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<MavenPomScm> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPomScm>() : json.map((value) => MavenPomScm.fromJson(value)).toList();
  }

  static Map<String, MavenPomScm> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPomScm>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPomScm.fromJson(value));
    }
    return map;
  }
}

