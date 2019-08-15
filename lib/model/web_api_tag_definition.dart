part of azure_devops_sdk.api;

class WebApiTagDefinition {
  /* Whether or not the tag definition is active. */
  bool active = null;
  /* ID of the tag definition. */
  String id = null;
  /* The name of the tag definition. */
  String name = null;
  /* Resource URL for the Tag Definition. */
  String url = null;
  WebApiTagDefinition();

  @override
  String toString() {
    return 'WebApiTagDefinition[active=$active, id=$id, name=$name, url=$url, ]';
  }

  WebApiTagDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['active'] == null) {
      active = null;
    } else {
          active = json['active'];
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
    if (active != null)
      json['active'] = active;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WebApiTagDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<WebApiTagDefinition>() : json.map((value) => WebApiTagDefinition.fromJson(value)).toList();
  }

  static Map<String, WebApiTagDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebApiTagDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebApiTagDefinition.fromJson(value));
    }
    return map;
  }
}

