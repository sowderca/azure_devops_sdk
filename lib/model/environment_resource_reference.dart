part of azure_devops_sdk.api;

class EnvironmentResourceReference {
  /* Id of the resource. */
  int id = null;
  /* Name of the resource. */
  String name = null;
  /* Type of the resource. */
  String type = null;
  //enum typeEnum {  undefined,  generic,  virtualMachine,  kubernetes,  };{
  EnvironmentResourceReference();

  @override
  String toString() {
    return 'EnvironmentResourceReference[id=$id, name=$name, type=$type, ]';
  }

  EnvironmentResourceReference.fromJson(Map<String, dynamic> json) {
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
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<EnvironmentResourceReference> listFromJson(List<dynamic> json) {
    return json == null ? List<EnvironmentResourceReference>() : json.map((value) => EnvironmentResourceReference.fromJson(value)).toList();
  }

  static Map<String, EnvironmentResourceReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EnvironmentResourceReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EnvironmentResourceReference.fromJson(value));
    }
    return map;
  }
}

