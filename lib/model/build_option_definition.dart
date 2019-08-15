part of azure_devops_sdk.api;

class BuildOptionDefinition {
  /* The ID of the referenced build option. */
  String id = null;
  BuildOptionDefinition();

  @override
  String toString() {
    return 'BuildOptionDefinition[id=$id, ]';
  }

  BuildOptionDefinition.fromJson(Map<String, dynamic> json) {
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

  static List<BuildOptionDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildOptionDefinition>() : json.map((value) => BuildOptionDefinition.fromJson(value)).toList();
  }

  static Map<String, BuildOptionDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildOptionDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildOptionDefinition.fromJson(value));
    }
    return map;
  }
}

