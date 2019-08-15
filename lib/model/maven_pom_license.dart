part of azure_devops_sdk.api;

class MavenPomLicense {
  
  String name = null;
  
  String url = null;
  MavenPomLicense();

  @override
  String toString() {
    return 'MavenPomLicense[name=$name, url=$url, ]';
  }

  MavenPomLicense.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<MavenPomLicense> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPomLicense>() : json.map((value) => MavenPomLicense.fromJson(value)).toList();
  }

  static Map<String, MavenPomLicense> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPomLicense>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPomLicense.fromJson(value));
    }
    return map;
  }
}

