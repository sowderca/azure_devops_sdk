part of azure_devops_sdk.api;

class SecureFileReference {
  /* An alias to be used when referencing the resource. */
  String alias = null;
  SecureFileReference();

  @override
  String toString() {
    return 'SecureFileReference[alias=$alias, ]';
  }

  SecureFileReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['alias'] == null) {
      alias = null;
    } else {
          alias = json['alias'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (alias != null)
      json['alias'] = alias;
    return json;
  }

  static List<SecureFileReference> listFromJson(List<dynamic> json) {
    return json == null ? List<SecureFileReference>() : json.map((value) => SecureFileReference.fromJson(value)).toList();
  }

  static Map<String, SecureFileReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SecureFileReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SecureFileReference.fromJson(value));
    }
    return map;
  }
}

