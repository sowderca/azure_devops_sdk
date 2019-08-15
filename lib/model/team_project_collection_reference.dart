part of azure_devops_sdk.api;

class TeamProjectCollectionReference {
  /* Collection Id. */
  String id = null;
  /* Collection Name. */
  String name = null;
  /* Collection REST Url. */
  String url = null;
  TeamProjectCollectionReference();

  @override
  String toString() {
    return 'TeamProjectCollectionReference[id=$id, name=$name, url=$url, ]';
  }

  TeamProjectCollectionReference.fromJson(Map<String, dynamic> json) {
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

  static List<TeamProjectCollectionReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamProjectCollectionReference>() : json.map((value) => TeamProjectCollectionReference.fromJson(value)).toList();
  }

  static Map<String, TeamProjectCollectionReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamProjectCollectionReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamProjectCollectionReference.fromJson(value));
    }
    return map;
  }
}

