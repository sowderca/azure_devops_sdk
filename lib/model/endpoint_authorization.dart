part of azure_devops_sdk.api;

class EndpointAuthorization {
  /* Gets or sets the parameters for the selected authorization scheme. */
  Map<String, String> parameters = {};
  /* Gets or sets the scheme used for service endpoint authentication. */
  String scheme = null;
  EndpointAuthorization();

  @override
  String toString() {
    return 'EndpointAuthorization[parameters=$parameters, scheme=$scheme, ]';
  }

  EndpointAuthorization.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['parameters'] == null) {
      parameters = null;
    } else {
          parameters = (json['parameters'] as Map).cast<String, String>();
    }
    if (json['scheme'] == null) {
      scheme = null;
    } else {
          scheme = json['scheme'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (parameters != null)
      json['parameters'] = parameters;
    if (scheme != null)
      json['scheme'] = scheme;
    return json;
  }

  static List<EndpointAuthorization> listFromJson(List<dynamic> json) {
    return json == null ? List<EndpointAuthorization>() : json.map((value) => EndpointAuthorization.fromJson(value)).toList();
  }

  static Map<String, EndpointAuthorization> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EndpointAuthorization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EndpointAuthorization.fromJson(value));
    }
    return map;
  }
}

