part of azure_devops_sdk.api;

class GlobalPermission {
  
  IdentityDescriptor identityDescriptor = null;
  /* IdentityId corresponding to the IdentityDescriptor */
  String identityId = null;
  /* Role associated with the Identity. */
  String role = null;
  //enum roleEnum {  custom,  none,  feedCreator,  administrator,  };{
  GlobalPermission();

  @override
  String toString() {
    return 'GlobalPermission[identityDescriptor=$identityDescriptor, identityId=$identityId, role=$role, ]';
  }

  GlobalPermission.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (identityDescriptor != null)
      json['identityDescriptor'] = identityDescriptor;
    if (identityId != null)
      json['identityId'] = identityId;
    if (role != null)
      json['role'] = role;
    return json;
  }

  static List<GlobalPermission> listFromJson(List<dynamic> json) {
    return json == null ? List<GlobalPermission>() : json.map((value) => GlobalPermission.fromJson(value)).toList();
  }

  static Map<String, GlobalPermission> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GlobalPermission>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GlobalPermission.fromJson(value));
    }
    return map;
  }
}

