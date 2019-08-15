part of azure_devops_sdk.api;

class ReleaseEnvironmentShallowReference {
  
  ReferenceLinks links = null;
  /* Gets the unique identifier of release environment. */
  int id = null;
  /* Gets or sets the name of the release environment. */
  String name = null;
  /* Gets the REST API url to access the release environment. */
  String url = null;
  ReleaseEnvironmentShallowReference();

  @override
  String toString() {
    return 'ReleaseEnvironmentShallowReference[links=$links, id=$id, name=$name, url=$url, ]';
  }

  ReleaseEnvironmentShallowReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
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
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ReleaseEnvironmentShallowReference> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseEnvironmentShallowReference>() : json.map((value) => ReleaseEnvironmentShallowReference.fromJson(value)).toList();
  }

  static Map<String, ReleaseEnvironmentShallowReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseEnvironmentShallowReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseEnvironmentShallowReference.fromJson(value));
    }
    return map;
  }
}

