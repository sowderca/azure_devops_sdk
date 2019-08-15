part of azure_devops_sdk.api;

class OAuthConfigurationParams {
  /* Gets or sets the ClientId */
  String clientId = null;
  /* Gets or sets the ClientSecret */
  String clientSecret = null;
  /* Gets or sets the type of the endpoint. */
  String endpointType = null;
  /* Gets or sets the name */
  String name = null;
  /* Gets or sets the Url */
  String url = null;
  OAuthConfigurationParams();

  @override
  String toString() {
    return 'OAuthConfigurationParams[clientId=$clientId, clientSecret=$clientSecret, endpointType=$endpointType, name=$name, url=$url, ]';
  }

  OAuthConfigurationParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['clientId'] == null) {
      clientId = null;
    } else {
          clientId = json['clientId'];
    }
    if (json['clientSecret'] == null) {
      clientSecret = null;
    } else {
          clientSecret = json['clientSecret'];
    }
    if (json['endpointType'] == null) {
      endpointType = null;
    } else {
          endpointType = json['endpointType'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (clientId != null)
      json['clientId'] = clientId;
    if (clientSecret != null)
      json['clientSecret'] = clientSecret;
    if (endpointType != null)
      json['endpointType'] = endpointType;
    if (name != null)
      json['name'] = name;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<OAuthConfigurationParams> listFromJson(List<dynamic> json) {
    return json == null ? List<OAuthConfigurationParams>() : json.map((value) => OAuthConfigurationParams.fromJson(value)).toList();
  }

  static Map<String, OAuthConfigurationParams> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OAuthConfigurationParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OAuthConfigurationParams.fromJson(value));
    }
    return map;
  }
}

