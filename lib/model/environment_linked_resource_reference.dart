part of azure_devops_sdk.api;

class EnvironmentLinkedResourceReference {
  /* Id of the resource. */
  String id = null;
  /* Type of resource. */
  String typeName = null;
  EnvironmentLinkedResourceReference();

  @override
  String toString() {
    return 'EnvironmentLinkedResourceReference[id=$id, typeName=$typeName, ]';
  }

  EnvironmentLinkedResourceReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['typeName'] == null) {
      typeName = null;
    } else {
          typeName = json['typeName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (typeName != null)
      json['typeName'] = typeName;
    return json;
  }

  static List<EnvironmentLinkedResourceReference> listFromJson(List<dynamic> json) {
    return json == null ? List<EnvironmentLinkedResourceReference>() : json.map((value) => EnvironmentLinkedResourceReference.fromJson(value)).toList();
  }

  static Map<String, EnvironmentLinkedResourceReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EnvironmentLinkedResourceReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EnvironmentLinkedResourceReference.fromJson(value));
    }
    return map;
  }
}

