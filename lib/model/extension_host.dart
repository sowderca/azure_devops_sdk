part of azure_devops_sdk.api;

class ExtensionHost {
  
  String id = null;
  
  String name = null;
  ExtensionHost();

  @override
  String toString() {
    return 'ExtensionHost[id=$id, name=$name, ]';
  }

  ExtensionHost.fromJson(Map<String, dynamic> json) {
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

  static List<ExtensionHost> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionHost>() : json.map((value) => ExtensionHost.fromJson(value)).toList();
  }

  static Map<String, ExtensionHost> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionHost>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionHost.fromJson(value));
    }
    return map;
  }
}

