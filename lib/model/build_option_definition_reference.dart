part of azure_devops_sdk.api;

class BuildOptionDefinitionReference {
  /* The ID of the referenced build option. */
  String id = null;
  BuildOptionDefinitionReference();

  @override
  String toString() {
    return 'BuildOptionDefinitionReference[id=$id, ]';
  }

  BuildOptionDefinitionReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<BuildOptionDefinitionReference> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildOptionDefinitionReference>() : json.map((value) => BuildOptionDefinitionReference.fromJson(value)).toList();
  }

  static Map<String, BuildOptionDefinitionReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildOptionDefinitionReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildOptionDefinitionReference.fromJson(value));
    }
    return map;
  }
}

