part of azure_devops_sdk.api;

class ExtensionAuthorization {
  
  String id = null;
  
  List<String> scopes = [];
  ExtensionAuthorization();

  @override
  String toString() {
    return 'ExtensionAuthorization[id=$id, scopes=$scopes, ]';
  }

  ExtensionAuthorization.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['scopes'] == null) {
      scopes = null;
    } else {
      scopes = (json['scopes'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (scopes != null)
      json['scopes'] = scopes;
    return json;
  }

  static List<ExtensionAuthorization> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionAuthorization>() : json.map((value) => ExtensionAuthorization.fromJson(value)).toList();
  }

  static Map<String, ExtensionAuthorization> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionAuthorization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionAuthorization.fromJson(value));
    }
    return map;
  }
}

