part of azure_devops_sdk.api;

class Extension {
  /* Assignment source for this extension. I.e. explicitly assigned or from a group rule. */
  String assignmentSource = null;
  //enum assignmentSourceEnum {  none,  unknown,  groupRule,  };{
  /* Gallery Id of the Extension. */
  String id = null;
  /* Friendly name of this extension. */
  String name = null;
  /* Source of this extension assignment. Ex: msdn, account, none, etc. */
  String source = null;
  //enum sourceEnum {  none,  account,  msdn,  profile,  auto,  trial,  };{
  Extension();

  @override
  String toString() {
    return 'Extension[assignmentSource=$assignmentSource, id=$id, name=$name, source=$source, ]';
  }

  Extension.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['assignmentSource'] == null) {
      assignmentSource = null;
    } else {
          assignmentSource = json['assignmentSource'];
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
    if (json['source'] == null) {
      source = null;
    } else {
          source = json['source'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assignmentSource != null)
      json['assignmentSource'] = assignmentSource;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (source != null)
      json['source'] = source;
    return json;
  }

  static List<Extension> listFromJson(List<dynamic> json) {
    return json == null ? List<Extension>() : json.map((value) => Extension.fromJson(value)).toList();
  }

  static Map<String, Extension> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Extension>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Extension.fromJson(value));
    }
    return map;
  }
}

