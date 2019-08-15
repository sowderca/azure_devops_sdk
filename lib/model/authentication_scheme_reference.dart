part of azure_devops_sdk.api;

class AuthenticationSchemeReference {
  /* Gets or sets the key and value of the fields used for authentication. */
  Map<String, String> inputs = {};
  /* Gets or sets the type of authentication scheme of an endpoint. */
  String type = null;
  AuthenticationSchemeReference();

  @override
  String toString() {
    return 'AuthenticationSchemeReference[inputs=$inputs, type=$type, ]';
  }

  AuthenticationSchemeReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['inputs'] == null) {
      inputs = null;
    } else {
          inputs = (json['inputs'] as Map).cast<String, String>();
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (inputs != null)
      json['inputs'] = inputs;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<AuthenticationSchemeReference> listFromJson(List<dynamic> json) {
    return json == null ? List<AuthenticationSchemeReference>() : json.map((value) => AuthenticationSchemeReference.fromJson(value)).toList();
  }

  static Map<String, AuthenticationSchemeReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AuthenticationSchemeReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AuthenticationSchemeReference.fromJson(value));
    }
    return map;
  }
}

