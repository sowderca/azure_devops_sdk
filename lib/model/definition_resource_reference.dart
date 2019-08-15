part of azure_devops_sdk.api;

class DefinitionResourceReference {
  /* Indicates whether the resource is authorized for use. */
  bool authorized = null;
  /* The id of the resource. */
  String id = null;
  /* A friendly name for the resource. */
  String name = null;
  /* The type of the resource. */
  String type = null;
  DefinitionResourceReference();

  @override
  String toString() {
    return 'DefinitionResourceReference[authorized=$authorized, id=$id, name=$name, type=$type, ]';
  }

  DefinitionResourceReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['authorized'] == null) {
      authorized = null;
    } else {
          authorized = json['authorized'];
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
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (authorized != null)
      json['authorized'] = authorized;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<DefinitionResourceReference> listFromJson(List<dynamic> json) {
    return json == null ? List<DefinitionResourceReference>() : json.map((value) => DefinitionResourceReference.fromJson(value)).toList();
  }

  static Map<String, DefinitionResourceReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DefinitionResourceReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DefinitionResourceReference.fromJson(value));
    }
    return map;
  }
}

