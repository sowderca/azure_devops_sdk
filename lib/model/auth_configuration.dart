part of azure_devops_sdk.api;

class AuthConfiguration {
  /* Gets or sets the ClientId */
  String clientId = null;
  /* Gets or sets the ClientSecret */
  String clientSecret = null;
  
  IdentityRef createdBy = null;
  /* Gets or sets the time when config was created. */
  DateTime createdOn = null;
  /* Gets or sets the type of the endpoint. */
  String endpointType = null;
  /* Gets or sets the unique identifier of this field */
  String id = null;
  
  IdentityRef modifiedBy = null;
  /* Gets or sets the time when variable group was modified */
  DateTime modifiedOn = null;
  /* Gets or sets the name */
  String name = null;
  /* Gets or sets the Url */
  String url = null;
  AuthConfiguration();

  @override
  String toString() {
    return 'AuthConfiguration[clientId=$clientId, clientSecret=$clientSecret, createdBy=$createdBy, createdOn=$createdOn, endpointType=$endpointType, id=$id, modifiedBy=$modifiedBy, modifiedOn=$modifiedOn, name=$name, url=$url, ]';
  }

  AuthConfiguration.fromJson(Map<String, dynamic> json) {
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
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
      createdBy = IdentityRef.fromJson(json['createdBy']);
    }
    if (json['createdOn'] == null) {
      createdOn = null;
    } else {
      createdOn = DateTime.parse(json['createdOn']);
    }
    if (json['endpointType'] == null) {
      endpointType = null;
    } else {
          endpointType = json['endpointType'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['modifiedBy'] == null) {
      modifiedBy = null;
    } else {
      modifiedBy = IdentityRef.fromJson(json['modifiedBy']);
    }
    if (json['modifiedOn'] == null) {
      modifiedOn = null;
    } else {
      modifiedOn = DateTime.parse(json['modifiedOn']);
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
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (createdOn != null)
      json['createdOn'] = createdOn == null ? null : createdOn.toUtc().toIso8601String();
    if (endpointType != null)
      json['endpointType'] = endpointType;
    if (id != null)
      json['id'] = id;
    if (modifiedBy != null)
      json['modifiedBy'] = modifiedBy;
    if (modifiedOn != null)
      json['modifiedOn'] = modifiedOn == null ? null : modifiedOn.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<AuthConfiguration> listFromJson(List<dynamic> json) {
    return json == null ? List<AuthConfiguration>() : json.map((value) => AuthConfiguration.fromJson(value)).toList();
  }

  static Map<String, AuthConfiguration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AuthConfiguration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AuthConfiguration.fromJson(value));
    }
    return map;
  }
}

