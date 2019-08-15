part of azure_devops_sdk.api;

class AuthorizationHeader {
  
  String name = null;
  
  String value = null;
  AuthorizationHeader();

  @override
  String toString() {
    return 'AuthorizationHeader[name=$name, value=$value, ]';
  }

  AuthorizationHeader.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<AuthorizationHeader> listFromJson(List<dynamic> json) {
    return json == null ? List<AuthorizationHeader>() : json.map((value) => AuthorizationHeader.fromJson(value)).toList();
  }

  static Map<String, AuthorizationHeader> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AuthorizationHeader>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AuthorizationHeader.fromJson(value));
    }
    return map;
  }
}

