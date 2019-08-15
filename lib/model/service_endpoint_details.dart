part of azure_devops_sdk.api;

class ServiceEndpointDetails {
  
  EndpointAuthorization authorization = null;
  /* Gets or sets the data of service endpoint. */
  Map<String, String> data = {};
  /* Gets or sets the type of service endpoint. */
  String type = null;
  /* Gets or sets the connection url of service endpoint. */
  String url = null;
  ServiceEndpointDetails();

  @override
  String toString() {
    return 'ServiceEndpointDetails[authorization=$authorization, data=$data, type=$type, url=$url, ]';
  }

  ServiceEndpointDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['authorization'] == null) {
      authorization = null;
    } else {
      authorization = EndpointAuthorization.fromJson(json['authorization']);
    }
    if (json['data'] == null) {
      data = null;
    } else {
          data = (json['data'] as Map).cast<String, String>();
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (authorization != null)
      json['authorization'] = authorization;
    if (data != null)
      json['data'] = data;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ServiceEndpointDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceEndpointDetails>() : json.map((value) => ServiceEndpointDetails.fromJson(value)).toList();
  }

  static Map<String, ServiceEndpointDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceEndpointDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceEndpointDetails.fromJson(value));
    }
    return map;
  }
}

