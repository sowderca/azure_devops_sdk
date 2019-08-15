part of azure_devops_sdk.api;

class AccessControlEntry {
  /* The set of permission bits that represent the actions that the associated descriptor is allowed to perform. */
  int allow = null;
  /* The set of permission bits that represent the actions that the associated descriptor is not allowed to perform. */
  int deny = null;
  
  IdentityDescriptor descriptor = null;
  
  AceExtendedInformation extendedInfo = null;
  AccessControlEntry();

  @override
  String toString() {
    return 'AccessControlEntry[allow=$allow, deny=$deny, descriptor=$descriptor, extendedInfo=$extendedInfo, ]';
  }

  AccessControlEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['allow'] == null) {
      allow = null;
    } else {
          allow = json['allow'];
    }
    if (json['deny'] == null) {
      deny = null;
    } else {
          deny = json['deny'];
    }
    if (json['descriptor'] == null) {
      descriptor = null;
    } else {
      descriptor = IdentityDescriptor.fromJson(json['descriptor']);
    }
    if (json['extendedInfo'] == null) {
      extendedInfo = null;
    } else {
      extendedInfo = AceExtendedInformation.fromJson(json['extendedInfo']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (allow != null)
      json['allow'] = allow;
    if (deny != null)
      json['deny'] = deny;
    if (descriptor != null)
      json['descriptor'] = descriptor;
    if (extendedInfo != null)
      json['extendedInfo'] = extendedInfo;
    return json;
  }

  static List<AccessControlEntry> listFromJson(List<dynamic> json) {
    return json == null ? List<AccessControlEntry>() : json.map((value) => AccessControlEntry.fromJson(value)).toList();
  }

  static Map<String, AccessControlEntry> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AccessControlEntry>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AccessControlEntry.fromJson(value));
    }
    return map;
  }
}

