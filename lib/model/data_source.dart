part of azure_devops_sdk.api;

class DataSource {
  
  AuthenticationSchemeReference authenticationScheme = null;
  /* Gets or sets the pagination format supported by this data source(ContinuationToken/SkipTop). */
  String callbackContextTemplate = null;
  /* Gets or sets the template to check if subsequent call is needed. */
  String callbackRequiredTemplate = null;
  /* Gets or sets the endpoint url of the data source. */
  String endpointUrl = null;
  /* Gets or sets the authorization headers of the request. */
  List<AuthorizationHeader> headers = [];
  /* Gets or sets the initial value of the query params. */
  String initialContextTemplate = null;
  /* Gets or sets the name of the data source. */
  String name = null;
  /* Gets or sets the request content of the endpoint request. */
  String requestContent = null;
  /* Gets or sets the request method of the endpoint request. */
  String requestVerb = null;
  /* Gets or sets the resource url of the endpoint request. */
  String resourceUrl = null;
  /* Gets or sets the result selector to filter the response of the endpoint request. */
  String resultSelector = null;
  DataSource();

  @override
  String toString() {
    return 'DataSource[authenticationScheme=$authenticationScheme, callbackContextTemplate=$callbackContextTemplate, callbackRequiredTemplate=$callbackRequiredTemplate, endpointUrl=$endpointUrl, headers=$headers, initialContextTemplate=$initialContextTemplate, name=$name, requestContent=$requestContent, requestVerb=$requestVerb, resourceUrl=$resourceUrl, resultSelector=$resultSelector, ]';
  }

  DataSource.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['authenticationScheme'] == null) {
      authenticationScheme = null;
    } else {
      authenticationScheme = AuthenticationSchemeReference.fromJson(json['authenticationScheme']);
    }
    if (json['callbackContextTemplate'] == null) {
      callbackContextTemplate = null;
    } else {
          callbackContextTemplate = json['callbackContextTemplate'];
    }
    if (json['callbackRequiredTemplate'] == null) {
      callbackRequiredTemplate = null;
    } else {
          callbackRequiredTemplate = json['callbackRequiredTemplate'];
    }
    if (json['endpointUrl'] == null) {
      endpointUrl = null;
    } else {
          endpointUrl = json['endpointUrl'];
    }
    if (json['headers'] == null) {
      headers = null;
    } else {
      headers = AuthorizationHeader.listFromJson(json['headers']);
    }
    if (json['initialContextTemplate'] == null) {
      initialContextTemplate = null;
    } else {
          initialContextTemplate = json['initialContextTemplate'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['requestContent'] == null) {
      requestContent = null;
    } else {
          requestContent = json['requestContent'];
    }
    if (json['requestVerb'] == null) {
      requestVerb = null;
    } else {
          requestVerb = json['requestVerb'];
    }
    if (json['resourceUrl'] == null) {
      resourceUrl = null;
    } else {
          resourceUrl = json['resourceUrl'];
    }
    if (json['resultSelector'] == null) {
      resultSelector = null;
    } else {
          resultSelector = json['resultSelector'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (authenticationScheme != null)
      json['authenticationScheme'] = authenticationScheme;
    if (callbackContextTemplate != null)
      json['callbackContextTemplate'] = callbackContextTemplate;
    if (callbackRequiredTemplate != null)
      json['callbackRequiredTemplate'] = callbackRequiredTemplate;
    if (endpointUrl != null)
      json['endpointUrl'] = endpointUrl;
    if (headers != null)
      json['headers'] = headers;
    if (initialContextTemplate != null)
      json['initialContextTemplate'] = initialContextTemplate;
    if (name != null)
      json['name'] = name;
    if (requestContent != null)
      json['requestContent'] = requestContent;
    if (requestVerb != null)
      json['requestVerb'] = requestVerb;
    if (resourceUrl != null)
      json['resourceUrl'] = resourceUrl;
    if (resultSelector != null)
      json['resultSelector'] = resultSelector;
    return json;
  }

  static List<DataSource> listFromJson(List<dynamic> json) {
    return json == null ? List<DataSource>() : json.map((value) => DataSource.fromJson(value)).toList();
  }

  static Map<String, DataSource> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DataSource>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DataSource.fromJson(value));
    }
    return map;
  }
}

