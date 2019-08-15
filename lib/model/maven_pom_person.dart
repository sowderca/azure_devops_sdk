part of azure_devops_sdk.api;

class MavenPomPerson {
  
  String email = null;
  
  String id = null;
  
  String name = null;
  
  String organization = null;
  
  String organizationUrl = null;
  
  List<String> roles = [];
  
  String timezone = null;
  
  String url = null;
  MavenPomPerson();

  @override
  String toString() {
    return 'MavenPomPerson[email=$email, id=$id, name=$name, organization=$organization, organizationUrl=$organizationUrl, roles=$roles, timezone=$timezone, url=$url, ]';
  }

  MavenPomPerson.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['email'] == null) {
      email = null;
    } else {
          email = json['email'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['organization'] == null) {
      organization = null;
    } else {
          organization = json['organization'];
    }
    if (json['organizationUrl'] == null) {
      organizationUrl = null;
    } else {
          organizationUrl = json['organizationUrl'];
    }
    if (json['roles'] == null) {
      roles = null;
    } else {
      roles = (json['roles'] as List).cast<String>();
    }
    if (json['timezone'] == null) {
      timezone = null;
    } else {
          timezone = json['timezone'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (email != null)
      json['email'] = email;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (organization != null)
      json['organization'] = organization;
    if (organizationUrl != null)
      json['organizationUrl'] = organizationUrl;
    if (roles != null)
      json['roles'] = roles;
    if (timezone != null)
      json['timezone'] = timezone;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<MavenPomPerson> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPomPerson>() : json.map((value) => MavenPomPerson.fromJson(value)).toList();
  }

  static Map<String, MavenPomPerson> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPomPerson>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPomPerson.fromJson(value));
    }
    return map;
  }
}

