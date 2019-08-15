part of azure_devops_sdk.api;

class XamlBuildServerReference {
  /* Id of the resource */
  int id = null;
  /* Name of the linked resource (definition name, controller name, etc.) */
  String name = null;
  /* Full http link to the resource */
  String url = null;
  XamlBuildServerReference();

  @override
  String toString() {
    return 'XamlBuildServerReference[id=$id, name=$name, url=$url, ]';
  }

  XamlBuildServerReference.fromJson(Map<String, dynamic> json) {
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

  static List<XamlBuildServerReference> listFromJson(List<dynamic> json) {
    return json == null ? List<XamlBuildServerReference>() : json.map((value) => XamlBuildServerReference.fromJson(value)).toList();
  }

  static Map<String, XamlBuildServerReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, XamlBuildServerReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = XamlBuildServerReference.fromJson(value));
    }
    return map;
  }
}

