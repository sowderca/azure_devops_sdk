part of azure_devops_sdk.api;

class PolicyConfiguration {
  /* The policy configuration ID. */
  int id = null;
  
  PolicyTypeRef type = null;
  /* The URL where the policy configuration can be retrieved. */
  String url = null;
  PolicyConfiguration();

  @override
  String toString() {
    return 'PolicyConfiguration[id=$id, type=$type, url=$url, ]';
  }

  PolicyConfiguration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
      type = PolicyTypeRef.fromJson(json['type']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<PolicyConfiguration> listFromJson(List<dynamic> json) {
    return json == null ? List<PolicyConfiguration>() : json.map((value) => PolicyConfiguration.fromJson(value)).toList();
  }

  static Map<String, PolicyConfiguration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PolicyConfiguration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PolicyConfiguration.fromJson(value));
    }
    return map;
  }
}

