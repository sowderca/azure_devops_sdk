part of azure_devops_sdk.api;

class ExtensionShare {
  
  String id = null;
  
  bool isOrg = null;
  
  String name = null;
  
  String type = null;
  ExtensionShare();

  @override
  String toString() {
    return 'ExtensionShare[id=$id, isOrg=$isOrg, name=$name, type=$type, ]';
  }

  ExtensionShare.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isOrg'] == null) {
      isOrg = null;
    } else {
          isOrg = json['isOrg'];
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
    if (id != null)
      json['id'] = id;
    if (isOrg != null)
      json['isOrg'] = isOrg;
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<ExtensionShare> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionShare>() : json.map((value) => ExtensionShare.fromJson(value)).toList();
  }

  static Map<String, ExtensionShare> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionShare>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionShare.fromJson(value));
    }
    return map;
  }
}

