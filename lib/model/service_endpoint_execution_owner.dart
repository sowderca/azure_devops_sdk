part of azure_devops_sdk.api;

class ServiceEndpointExecutionOwner {
  
  ReferenceLinks links = null;
  /* Gets or sets the Id of service endpoint execution owner. */
  int id = null;
  /* Gets or sets the name of service endpoint execution owner. */
  String name = null;
  ServiceEndpointExecutionOwner();

  @override
  String toString() {
    return 'ServiceEndpointExecutionOwner[links=$links, id=$id, name=$name, ]';
  }

  ServiceEndpointExecutionOwner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<ServiceEndpointExecutionOwner> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceEndpointExecutionOwner>() : json.map((value) => ServiceEndpointExecutionOwner.fromJson(value)).toList();
  }

  static Map<String, ServiceEndpointExecutionOwner> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceEndpointExecutionOwner>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceEndpointExecutionOwner.fromJson(value));
    }
    return map;
  }
}

