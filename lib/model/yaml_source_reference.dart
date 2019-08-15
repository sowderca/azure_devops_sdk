part of azure_devops_sdk.api;

class YamlSourceReference {
  
  String id = null;
  
  String name = null;
  YamlSourceReference();

  @override
  String toString() {
    return 'YamlSourceReference[id=$id, name=$name, ]';
  }

  YamlSourceReference.fromJson(Map<String, dynamic> json) {
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

  static List<YamlSourceReference> listFromJson(List<dynamic> json) {
    return json == null ? List<YamlSourceReference>() : json.map((value) => YamlSourceReference.fromJson(value)).toList();
  }

  static Map<String, YamlSourceReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, YamlSourceReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = YamlSourceReference.fromJson(value));
    }
    return map;
  }
}

