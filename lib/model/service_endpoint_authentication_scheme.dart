part of azure_devops_sdk.api;

class ServiceEndpointAuthenticationScheme {
  /* Gets or sets the authorization headers of service endpoint authentication scheme. */
  List<AuthorizationHeader> authorizationHeaders = [];
  /* Gets or sets the Authorization url required to authenticate using OAuth2 */
  String authorizationUrl = null;
  /* Gets or sets the certificates of service endpoint authentication scheme. */
  List<ClientCertificate> clientCertificates = [];
  /* Gets or sets the data source bindings of the endpoint. */
  List<DataSourceBinding> dataSourceBindings = [];
  /* Gets or sets the display name for the service endpoint authentication scheme. */
  String displayName = null;
  /* Gets or sets the input descriptors for the service endpoint authentication scheme. */
  List<InputDescriptor> inputDescriptors = [];
  /* Gets or sets the scheme for service endpoint authentication. */
  String scheme = null;
  ServiceEndpointAuthenticationScheme();

  @override
  String toString() {
    return 'ServiceEndpointAuthenticationScheme[authorizationHeaders=$authorizationHeaders, authorizationUrl=$authorizationUrl, clientCertificates=$clientCertificates, dataSourceBindings=$dataSourceBindings, displayName=$displayName, inputDescriptors=$inputDescriptors, scheme=$scheme, ]';
  }

  ServiceEndpointAuthenticationScheme.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['authorizationHeaders'] == null) {
      authorizationHeaders = null;
    } else {
      authorizationHeaders = AuthorizationHeader.listFromJson(json['authorizationHeaders']);
    }
    if (json['authorizationUrl'] == null) {
      authorizationUrl = null;
    } else {
          authorizationUrl = json['authorizationUrl'];
    }
    if (json['clientCertificates'] == null) {
      clientCertificates = null;
    } else {
      clientCertificates = ClientCertificate.listFromJson(json['clientCertificates']);
    }
    if (json['dataSourceBindings'] == null) {
      dataSourceBindings = null;
    } else {
      dataSourceBindings = DataSourceBinding.listFromJson(json['dataSourceBindings']);
    }
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['inputDescriptors'] == null) {
      inputDescriptors = null;
    } else {
      inputDescriptors = InputDescriptor.listFromJson(json['inputDescriptors']);
    }
    if (json['scheme'] == null) {
      scheme = null;
    } else {
          scheme = json['scheme'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (authorizationHeaders != null)
      json['authorizationHeaders'] = authorizationHeaders;
    if (authorizationUrl != null)
      json['authorizationUrl'] = authorizationUrl;
    if (clientCertificates != null)
      json['clientCertificates'] = clientCertificates;
    if (dataSourceBindings != null)
      json['dataSourceBindings'] = dataSourceBindings;
    if (displayName != null)
      json['displayName'] = displayName;
    if (inputDescriptors != null)
      json['inputDescriptors'] = inputDescriptors;
    if (scheme != null)
      json['scheme'] = scheme;
    return json;
  }

  static List<ServiceEndpointAuthenticationScheme> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceEndpointAuthenticationScheme>() : json.map((value) => ServiceEndpointAuthenticationScheme.fromJson(value)).toList();
  }

  static Map<String, ServiceEndpointAuthenticationScheme> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceEndpointAuthenticationScheme>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceEndpointAuthenticationScheme.fromJson(value));
    }
    return map;
  }
}

