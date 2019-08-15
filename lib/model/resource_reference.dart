part of azure_devops_sdk.api;

class ResourceReference {
  /* An alias to be used when referencing the resource. */
  String alias = null;
  ResourceReference();

  @override
  String toString() {
    return 'ResourceReference[alias=$alias, ]';
  }

  ResourceReference.fromJson(Map<String, dynamic> json) {
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

  static List<ResourceReference> listFromJson(List<dynamic> json) {
    return json == null ? List<ResourceReference>() : json.map((value) => ResourceReference.fromJson(value)).toList();
  }

  static Map<String, ResourceReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResourceReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResourceReference.fromJson(value));
    }
    return map;
  }
}

