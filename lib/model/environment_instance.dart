part of azure_devops_sdk.api;

class EnvironmentInstance {
  
  IdentityRef createdBy = null;
  /* Creation time of the Environment */
  DateTime createdOn = null;
  /* Description of the Environment. */
  String description = null;
  /* Id of the Environment */
  int id = null;
  
  IdentityRef lastModifiedBy = null;
  /* Last modified time of the Environment */
  DateTime lastModifiedOn = null;
  /* Name of the Environment. */
  String name = null;
  
  List<EnvironmentResourceReference> resources = [];
  EnvironmentInstance();

  @override
  String toString() {
    return 'EnvironmentInstance[createdBy=$createdBy, createdOn=$createdOn, description=$description, id=$id, lastModifiedBy=$lastModifiedBy, lastModifiedOn=$lastModifiedOn, name=$name, resources=$resources, ]';
  }

  EnvironmentInstance.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
      createdBy = IdentityRef.fromJson(json['createdBy']);
    }
    if (json['createdOn'] == null) {
      createdOn = null;
    } else {
      createdOn = DateTime.parse(json['createdOn']);
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['lastModifiedBy'] == null) {
      lastModifiedBy = null;
    } else {
      lastModifiedBy = IdentityRef.fromJson(json['lastModifiedBy']);
    }
    if (json['lastModifiedOn'] == null) {
      lastModifiedOn = null;
    } else {
      lastModifiedOn = DateTime.parse(json['lastModifiedOn']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['resources'] == null) {
      resources = null;
    } else {
      resources = EnvironmentResourceReference.listFromJson(json['resources']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (createdOn != null)
      json['createdOn'] = createdOn == null ? null : createdOn.toUtc().toIso8601String();
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (lastModifiedBy != null)
      json['lastModifiedBy'] = lastModifiedBy;
    if (lastModifiedOn != null)
      json['lastModifiedOn'] = lastModifiedOn == null ? null : lastModifiedOn.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (resources != null)
      json['resources'] = resources;
    return json;
  }

  static List<EnvironmentInstance> listFromJson(List<dynamic> json) {
    return json == null ? List<EnvironmentInstance>() : json.map((value) => EnvironmentInstance.fromJson(value)).toList();
  }

  static Map<String, EnvironmentInstance> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EnvironmentInstance>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EnvironmentInstance.fromJson(value));
    }
    return map;
  }
}

