part of azure_devops_sdk.api;

class PolicyTypeRef {
  /* Display name of the policy type. */
  String displayName = null;
  /* The policy type ID. */
  String id = null;
  /* The URL where the policy type can be retrieved. */
  String url = null;
  PolicyTypeRef();

  @override
  String toString() {
    return 'PolicyTypeRef[displayName=$displayName, id=$id, url=$url, ]';
  }

  PolicyTypeRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (id != null)
      json['id'] = id;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<PolicyTypeRef> listFromJson(List<dynamic> json) {
    return json == null ? List<PolicyTypeRef>() : json.map((value) => PolicyTypeRef.fromJson(value)).toList();
  }

  static Map<String, PolicyTypeRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PolicyTypeRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PolicyTypeRef.fromJson(value));
    }
    return map;
  }
}

