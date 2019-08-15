part of azure_devops_sdk.api;

class PolicyType {
  /* Display name of the policy type. */
  String displayName = null;
  /* The policy type ID. */
  String id = null;
  /* The URL where the policy type can be retrieved. */
  String url = null;
  PolicyType();

  @override
  String toString() {
    return 'PolicyType[displayName=$displayName, id=$id, url=$url, ]';
  }

  PolicyType.fromJson(Map<String, dynamic> json) {
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

  static List<PolicyType> listFromJson(List<dynamic> json) {
    return json == null ? List<PolicyType>() : json.map((value) => PolicyType.fromJson(value)).toList();
  }

  static Map<String, PolicyType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PolicyType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PolicyType.fromJson(value));
    }
    return map;
  }
}

