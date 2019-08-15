part of azure_devops_sdk.api;

class MavenPomOrganization {
  
  String name = null;
  
  String url = null;
  MavenPomOrganization();

  @override
  String toString() {
    return 'MavenPomOrganization[name=$name, url=$url, ]';
  }

  MavenPomOrganization.fromJson(Map<String, dynamic> json) {
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

  static List<MavenPomOrganization> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPomOrganization>() : json.map((value) => MavenPomOrganization.fromJson(value)).toList();
  }

  static Map<String, MavenPomOrganization> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPomOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPomOrganization.fromJson(value));
    }
    return map;
  }
}

