part of azure_devops_sdk.api;

class ReleaseShallowReference {
  
  ReferenceLinks links = null;
  /* Gets the unique identifier of release. */
  int id = null;
  /* Gets or sets the name of the release. */
  String name = null;
  /* Gets the REST API url to access the release. */
  String url = null;
  ReleaseShallowReference();

  @override
  String toString() {
    return 'ReleaseShallowReference[links=$links, id=$id, name=$name, url=$url, ]';
  }

  ReleaseShallowReference.fromJson(Map<String, dynamic> json) {
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

  static List<ReleaseShallowReference> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseShallowReference>() : json.map((value) => ReleaseShallowReference.fromJson(value)).toList();
  }

  static Map<String, ReleaseShallowReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseShallowReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseShallowReference.fromJson(value));
    }
    return map;
  }
}

