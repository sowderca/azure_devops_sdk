part of azure_devops_sdk.api;

class TeamProjectCollection {
  /* Collection Id. */
  String id = null;
  /* Collection Name. */
  String name = null;
  /* Collection REST Url. */
  String url = null;
  TeamProjectCollection();

  @override
  String toString() {
    return 'TeamProjectCollection[id=$id, name=$name, url=$url, ]';
  }

  TeamProjectCollection.fromJson(Map<String, dynamic> json) {
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

  static List<TeamProjectCollection> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamProjectCollection>() : json.map((value) => TeamProjectCollection.fromJson(value)).toList();
  }

  static Map<String, TeamProjectCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamProjectCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamProjectCollection.fromJson(value));
    }
    return map;
  }
}

