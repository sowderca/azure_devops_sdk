part of azure_devops_sdk.api;

class WebApiTeam {
  /* Team (Identity) Guid. A Team Foundation ID. */
  String id = null;
  /* Team name */
  String name = null;
  /* Team REST API Url */
  String url = null;
  WebApiTeam();

  @override
  String toString() {
    return 'WebApiTeam[id=$id, name=$name, url=$url, ]';
  }

  WebApiTeam.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WebApiTeam> listFromJson(List<dynamic> json) {
    return json == null ? List<WebApiTeam>() : json.map((value) => WebApiTeam.fromJson(value)).toList();
  }

  static Map<String, WebApiTeam> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebApiTeam>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebApiTeam.fromJson(value));
    }
    return map;
  }
}

