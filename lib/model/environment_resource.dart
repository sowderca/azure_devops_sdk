part of azure_devops_sdk.api;

class EnvironmentResource {
  
  IdentityRef createdBy = null;
  
  DateTime createdOn = null;
  
  EnvironmentReference environmentReference = null;
  
  int id = null;
  
  IdentityRef lastModifiedBy = null;
  
  DateTime lastModifiedOn = null;
  
  String name = null;
  /* Environment resource type */
  String type = null;
  //enum typeEnum {  undefined,  generic,  virtualMachine,  kubernetes,  };{
  EnvironmentResource();

  @override
  String toString() {
    return 'EnvironmentResource[createdBy=$createdBy, createdOn=$createdOn, environmentReference=$environmentReference, id=$id, lastModifiedBy=$lastModifiedBy, lastModifiedOn=$lastModifiedOn, name=$name, type=$type, ]';
  }

  EnvironmentResource.fromJson(Map<String, dynamic> json) {
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
    if (json['environmentReference'] == null) {
      environmentReference = null;
    } else {
      environmentReference = EnvironmentReference.fromJson(json['environmentReference']);
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
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (createdOn != null)
      json['createdOn'] = createdOn == null ? null : createdOn.toUtc().toIso8601String();
    if (environmentReference != null)
      json['environmentReference'] = environmentReference;
    if (id != null)
      json['id'] = id;
    if (lastModifiedBy != null)
      json['lastModifiedBy'] = lastModifiedBy;
    if (lastModifiedOn != null)
      json['lastModifiedOn'] = lastModifiedOn == null ? null : lastModifiedOn.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<EnvironmentResource> listFromJson(List<dynamic> json) {
    return json == null ? List<EnvironmentResource>() : json.map((value) => EnvironmentResource.fromJson(value)).toList();
  }

  static Map<String, EnvironmentResource> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EnvironmentResource>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EnvironmentResource.fromJson(value));
    }
    return map;
  }
}

