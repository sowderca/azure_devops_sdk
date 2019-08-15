part of azure_devops_sdk.api;

class EnvironmentReference {
  
  int id = null;
  
  String name = null;
  EnvironmentReference();

  @override
  String toString() {
    return 'EnvironmentReference[id=$id, name=$name, ]';
  }

  EnvironmentReference.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<EnvironmentReference> listFromJson(List<dynamic> json) {
    return json == null ? List<EnvironmentReference>() : json.map((value) => EnvironmentReference.fromJson(value)).toList();
  }

  static Map<String, EnvironmentReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EnvironmentReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EnvironmentReference.fromJson(value));
    }
    return map;
  }
}

