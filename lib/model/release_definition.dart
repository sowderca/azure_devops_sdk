part of azure_devops_sdk.api;

class ReleaseDefinition {
  
  ReferenceLinks links = null;
  /* Gets the unique identifier of release definition. */
  int id = null;
  /* Gets or sets the name of the release definition. */
  String name = null;
  /* Gets or sets the path of the release definition. */
  String path = null;
  
  ProjectReference projectReference = null;
  /* Gets the REST API url to access the release definition. */
  String url = null;
  ReleaseDefinition();

  @override
  String toString() {
    return 'ReleaseDefinition[links=$links, id=$id, name=$name, path=$path, projectReference=$projectReference, url=$url, ]';
  }

  ReleaseDefinition.fromJson(Map<String, dynamic> json) {
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
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['projectReference'] == null) {
      projectReference = null;
    } else {
      projectReference = ProjectReference.fromJson(json['projectReference']);
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
    if (path != null)
      json['path'] = path;
    if (projectReference != null)
      json['projectReference'] = projectReference;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ReleaseDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseDefinition>() : json.map((value) => ReleaseDefinition.fromJson(value)).toList();
  }

  static Map<String, ReleaseDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseDefinition.fromJson(value));
    }
    return map;
  }
}

