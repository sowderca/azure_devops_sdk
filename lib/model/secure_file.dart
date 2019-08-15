part of azure_devops_sdk.api;

class SecureFile {
  
  IdentityRef createdBy = null;
  
  DateTime createdOn = null;
  
  String id = null;
  
  IdentityRef modifiedBy = null;
  
  DateTime modifiedOn = null;
  
  String name = null;
  
  Map<String, String> properties = {};
  
  String ticket = null;
  SecureFile();

  @override
  String toString() {
    return 'SecureFile[createdBy=$createdBy, createdOn=$createdOn, id=$id, modifiedBy=$modifiedBy, modifiedOn=$modifiedOn, name=$name, properties=$properties, ticket=$ticket, ]';
  }

  SecureFile.fromJson(Map<String, dynamic> json) {
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
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['modifiedBy'] == null) {
      modifiedBy = null;
    } else {
      modifiedBy = IdentityRef.fromJson(json['modifiedBy']);
    }
    if (json['modifiedOn'] == null) {
      modifiedOn = null;
    } else {
      modifiedOn = DateTime.parse(json['modifiedOn']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
          properties = (json['properties'] as Map).cast<String, String>();
    }
    if (json['ticket'] == null) {
      ticket = null;
    } else {
          ticket = json['ticket'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (createdOn != null)
      json['createdOn'] = createdOn == null ? null : createdOn.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (modifiedBy != null)
      json['modifiedBy'] = modifiedBy;
    if (modifiedOn != null)
      json['modifiedOn'] = modifiedOn == null ? null : modifiedOn.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (properties != null)
      json['properties'] = properties;
    if (ticket != null)
      json['ticket'] = ticket;
    return json;
  }

  static List<SecureFile> listFromJson(List<dynamic> json) {
    return json == null ? List<SecureFile>() : json.map((value) => SecureFile.fromJson(value)).toList();
  }

  static Map<String, SecureFile> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SecureFile>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SecureFile.fromJson(value));
    }
    return map;
  }
}

