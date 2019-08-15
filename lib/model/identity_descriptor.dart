part of azure_devops_sdk.api;

class IdentityDescriptor {
  /* The unique identifier for this identity, not exceeding 256 chars, which will be persisted. */
  String identifier = null;
  /* Type of descriptor (for example, Windows, Passport, etc.). */
  String identityType = null;
  IdentityDescriptor();

  @override
  String toString() {
    return 'IdentityDescriptor[identifier=$identifier, identityType=$identityType, ]';
  }

  IdentityDescriptor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['identifier'] == null) {
      identifier = null;
    } else {
          identifier = json['identifier'];
    }
    if (json['identityType'] == null) {
      identityType = null;
    } else {
          identityType = json['identityType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (identifier != null)
      json['identifier'] = identifier;
    if (identityType != null)
      json['identityType'] = identityType;
    return json;
  }

  static List<IdentityDescriptor> listFromJson(List<dynamic> json) {
    return json == null ? List<IdentityDescriptor>() : json.map((value) => IdentityDescriptor.fromJson(value)).toList();
  }

  static Map<String, IdentityDescriptor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, IdentityDescriptor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = IdentityDescriptor.fromJson(value));
    }
    return map;
  }
}

