part of azure_devops_sdk.api;

class BuildAgentReference {
  /* Id of the resource */
  int id = null;
  /* Name of the linked resource (definition name, controller name, etc.) */
  String name = null;
  /* Full http link to the resource */
  String url = null;
  BuildAgentReference();

  @override
  String toString() {
    return 'BuildAgentReference[id=$id, name=$name, url=$url, ]';
  }

  BuildAgentReference.fromJson(Map<String, dynamic> json) {
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

  static List<BuildAgentReference> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildAgentReference>() : json.map((value) => BuildAgentReference.fromJson(value)).toList();
  }

  static Map<String, BuildAgentReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildAgentReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildAgentReference.fromJson(value));
    }
    return map;
  }
}

