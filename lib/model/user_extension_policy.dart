part of azure_devops_sdk.api;

class UserExtensionPolicy {
  /* User display name that this policy refers to */
  String displayName = null;
  
  ExtensionPolicy permissions = null;
  /* User id that this policy refers to */
  String userId = null;
  UserExtensionPolicy();

  @override
  String toString() {
    return 'UserExtensionPolicy[displayName=$displayName, permissions=$permissions, userId=$userId, ]';
  }

  UserExtensionPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['permissions'] == null) {
      permissions = null;
    } else {
      permissions = ExtensionPolicy.fromJson(json['permissions']);
    }
    if (json['userId'] == null) {
      userId = null;
    } else {
          userId = json['userId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (permissions != null)
      json['permissions'] = permissions;
    if (userId != null)
      json['userId'] = userId;
    return json;
  }

  static List<UserExtensionPolicy> listFromJson(List<dynamic> json) {
    return json == null ? List<UserExtensionPolicy>() : json.map((value) => UserExtensionPolicy.fromJson(value)).toList();
  }

  static Map<String, UserExtensionPolicy> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UserExtensionPolicy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserExtensionPolicy.fromJson(value));
    }
    return map;
  }
}

