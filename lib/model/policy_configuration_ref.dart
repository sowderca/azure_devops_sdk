part of azure_devops_sdk.api;

class PolicyConfigurationRef {
  /* The policy configuration ID. */
  int id = null;
  
  PolicyTypeRef type = null;
  /* The URL where the policy configuration can be retrieved. */
  String url = null;
  PolicyConfigurationRef();

  @override
  String toString() {
    return 'PolicyConfigurationRef[id=$id, type=$type, url=$url, ]';
  }

  PolicyConfigurationRef.fromJson(Map<String, dynamic> json) {
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

  static List<PolicyConfigurationRef> listFromJson(List<dynamic> json) {
    return json == null ? List<PolicyConfigurationRef>() : json.map((value) => PolicyConfigurationRef.fromJson(value)).toList();
  }

  static Map<String, PolicyConfigurationRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PolicyConfigurationRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PolicyConfigurationRef.fromJson(value));
    }
    return map;
  }
}

