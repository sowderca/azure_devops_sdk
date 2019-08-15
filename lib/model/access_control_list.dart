part of azure_devops_sdk.api;

class AccessControlList {
  /* Storage of permissions keyed on the identity the permission is for. */
  Map<String, AccessControlEntry> acesDictionary = {};
  /* True if this ACL holds ACEs that have extended information. */
  bool includeExtendedInfo = null;
  /* True if the given token inherits permissions from parents. */
  bool inheritPermissions = null;
  /* The token that this AccessControlList is for. */
  String token = null;
  AccessControlList();

  @override
  String toString() {
    return 'AccessControlList[acesDictionary=$acesDictionary, includeExtendedInfo=$includeExtendedInfo, inheritPermissions=$inheritPermissions, token=$token, ]';
  }

  AccessControlList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['acesDictionary'] == null) {
      acesDictionary = null;
    } else {
      acesDictionary = AccessControlEntry.mapFromJson(json['acesDictionary']);
    }
    if (json['includeExtendedInfo'] == null) {
      includeExtendedInfo = null;
    } else {
          includeExtendedInfo = json['includeExtendedInfo'];
    }
    if (json['inheritPermissions'] == null) {
      inheritPermissions = null;
    } else {
          inheritPermissions = json['inheritPermissions'];
    }
    if (json['token'] == null) {
      token = null;
    } else {
          token = json['token'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (acesDictionary != null)
      json['acesDictionary'] = acesDictionary;
    if (includeExtendedInfo != null)
      json['includeExtendedInfo'] = includeExtendedInfo;
    if (inheritPermissions != null)
      json['inheritPermissions'] = inheritPermissions;
    if (token != null)
      json['token'] = token;
    return json;
  }

  static List<AccessControlList> listFromJson(List<dynamic> json) {
    return json == null ? List<AccessControlList>() : json.map((value) => AccessControlList.fromJson(value)).toList();
  }

  static Map<String, AccessControlList> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AccessControlList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AccessControlList.fromJson(value));
    }
    return map;
  }
}

