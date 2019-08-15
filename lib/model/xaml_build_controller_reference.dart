part of azure_devops_sdk.api;

class XamlBuildControllerReference {
  /* Id of the resource */
  int id = null;
  /* Name of the linked resource (definition name, controller name, etc.) */
  String name = null;
  /* Full http link to the resource */
  String url = null;
  XamlBuildControllerReference();

  @override
  String toString() {
    return 'XamlBuildControllerReference[id=$id, name=$name, url=$url, ]';
  }

  XamlBuildControllerReference.fromJson(Map<String, dynamic> json) {
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

  static List<XamlBuildControllerReference> listFromJson(List<dynamic> json) {
    return json == null ? List<XamlBuildControllerReference>() : json.map((value) => XamlBuildControllerReference.fromJson(value)).toList();
  }

  static Map<String, XamlBuildControllerReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, XamlBuildControllerReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = XamlBuildControllerReference.fromJson(value));
    }
    return map;
  }
}

