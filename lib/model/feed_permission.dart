part of azure_devops_sdk.api;

class FeedPermission {
  /* Display name for the identity. */
  String displayName = null;
  
  IdentityDescriptor identityDescriptor = null;
  /* Id of the identity associated with this role. */
  String identityId = null;
  /* The role for this identity on a feed. */
  String role = null;
  //enum roleEnum {  custom,  none,  reader,  contributor,  administrator,  collaborator,  };{
  FeedPermission();

  @override
  String toString() {
    return 'FeedPermission[displayName=$displayName, identityDescriptor=$identityDescriptor, identityId=$identityId, role=$role, ]';
  }

  FeedPermission.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['identityDescriptor'] == null) {
      identityDescriptor = null;
    } else {
      identityDescriptor = IdentityDescriptor.fromJson(json['identityDescriptor']);
    }
    if (json['identityId'] == null) {
      identityId = null;
    } else {
          identityId = json['identityId'];
    }
    if (json['role'] == null) {
      role = null;
    } else {
          role = json['role'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (identityDescriptor != null)
      json['identityDescriptor'] = identityDescriptor;
    if (identityId != null)
      json['identityId'] = identityId;
    if (role != null)
      json['role'] = role;
    return json;
  }

  static List<FeedPermission> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedPermission>() : json.map((value) => FeedPermission.fromJson(value)).toList();
  }

  static Map<String, FeedPermission> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedPermission>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedPermission.fromJson(value));
    }
    return map;
  }
}

