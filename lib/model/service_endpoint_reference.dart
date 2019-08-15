part of azure_devops_sdk.api;

class ServiceEndpointReference {
  /* An alias to be used when referencing the resource. */
  String alias = null;
  ServiceEndpointReference();

  @override
  String toString() {
    return 'ServiceEndpointReference[alias=$alias, ]';
  }

  ServiceEndpointReference.fromJson(Map<String, dynamic> json) {
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

  static List<ServiceEndpointReference> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceEndpointReference>() : json.map((value) => ServiceEndpointReference.fromJson(value)).toList();
  }

  static Map<String, ServiceEndpointReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceEndpointReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceEndpointReference.fromJson(value));
    }
    return map;
  }
}

