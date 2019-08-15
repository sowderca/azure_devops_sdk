part of azure_devops_sdk.api;

class AzureMLWorkspace {
  
  String id = null;
  
  String location = null;
  
  String name = null;
  AzureMLWorkspace();

  @override
  String toString() {
    return 'AzureMLWorkspace[id=$id, location=$location, name=$name, ]';
  }

  AzureMLWorkspace.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['location'] == null) {
      location = null;
    } else {
          location = json['location'];
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
    if (location != null)
      json['location'] = location;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<AzureMLWorkspace> listFromJson(List<dynamic> json) {
    return json == null ? List<AzureMLWorkspace>() : json.map((value) => AzureMLWorkspace.fromJson(value)).toList();
  }

  static Map<String, AzureMLWorkspace> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AzureMLWorkspace>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AzureMLWorkspace.fromJson(value));
    }
    return map;
  }
}

