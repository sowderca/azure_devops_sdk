part of azure_devops_sdk.api;

class AceExtendedInformation {
  /* This is the combination of all of the explicit and inherited permissions for this identity on this token.  These are the permissions used when determining if a given user has permission to perform an action. */
  int effectiveAllow = null;
  /* This is the combination of all of the explicit and inherited permissions for this identity on this token.  These are the permissions used when determining if a given user has permission to perform an action. */
  int effectiveDeny = null;
  /* These are the permissions that are inherited for this identity on this token.  If the token does not inherit permissions this will be 0.  Note that any permissions that have been explicitly set on this token for this identity, or any groups that this identity is a part of, are not included here. */
  int inheritedAllow = null;
  /* These are the permissions that are inherited for this identity on this token.  If the token does not inherit permissions this will be 0.  Note that any permissions that have been explicitly set on this token for this identity, or any groups that this identity is a part of, are not included here. */
  int inheritedDeny = null;
  AceExtendedInformation();

  @override
  String toString() {
    return 'AceExtendedInformation[effectiveAllow=$effectiveAllow, effectiveDeny=$effectiveDeny, inheritedAllow=$inheritedAllow, inheritedDeny=$inheritedDeny, ]';
  }

  AceExtendedInformation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['effectiveAllow'] == null) {
      effectiveAllow = null;
    } else {
          effectiveAllow = json['effectiveAllow'];
    }
    if (json['effectiveDeny'] == null) {
      effectiveDeny = null;
    } else {
          effectiveDeny = json['effectiveDeny'];
    }
    if (json['inheritedAllow'] == null) {
      inheritedAllow = null;
    } else {
          inheritedAllow = json['inheritedAllow'];
    }
    if (json['inheritedDeny'] == null) {
      inheritedDeny = null;
    } else {
          inheritedDeny = json['inheritedDeny'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (effectiveAllow != null)
      json['effectiveAllow'] = effectiveAllow;
    if (effectiveDeny != null)
      json['effectiveDeny'] = effectiveDeny;
    if (inheritedAllow != null)
      json['inheritedAllow'] = inheritedAllow;
    if (inheritedDeny != null)
      json['inheritedDeny'] = inheritedDeny;
    return json;
  }

  static List<AceExtendedInformation> listFromJson(List<dynamic> json) {
    return json == null ? List<AceExtendedInformation>() : json.map((value) => AceExtendedInformation.fromJson(value)).toList();
  }

  static Map<String, AceExtendedInformation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AceExtendedInformation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AceExtendedInformation.fromJson(value));
    }
    return map;
  }
}

