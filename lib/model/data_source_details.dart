part of azure_devops_sdk.api;

class DataSourceDetails {
  /* Gets or sets the data source name. */
  String dataSourceName = null;
  /* Gets or sets the data source url. */
  String dataSourceUrl = null;
  /* Gets or sets the request headers. */
  List<AuthorizationHeader> headers = [];
  /* Gets or sets the initialization context used for the initial call to the data source */
  String initialContextTemplate = null;
  /* Gets the parameters of data source. */
  Map<String, String> parameters = {};
  /* Gets or sets the data source request content. */
  String requestContent = null;
  /* Gets or sets the data source request verb. Get/Post are the only implemented types */
  String requestVerb = null;
  /* Gets or sets the resource url of data source. */
  String resourceUrl = null;
  /* Gets or sets the result selector. */
  String resultSelector = null;
  DataSourceDetails();

  @override
  String toString() {
    return 'DataSourceDetails[dataSourceName=$dataSourceName, dataSourceUrl=$dataSourceUrl, headers=$headers, initialContextTemplate=$initialContextTemplate, parameters=$parameters, requestContent=$requestContent, requestVerb=$requestVerb, resourceUrl=$resourceUrl, resultSelector=$resultSelector, ]';
  }

  DataSourceDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dataSourceName'] == null) {
      dataSourceName = null;
    } else {
          dataSourceName = json['dataSourceName'];
    }
    if (json['dataSourceUrl'] == null) {
      dataSourceUrl = null;
    } else {
          dataSourceUrl = json['dataSourceUrl'];
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
    if (json['parameters'] == null) {
      parameters = null;
    } else {
          parameters = (json['parameters'] as Map).cast<String, String>();
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
    if (dataSourceName != null)
      json['dataSourceName'] = dataSourceName;
    if (dataSourceUrl != null)
      json['dataSourceUrl'] = dataSourceUrl;
    if (headers != null)
      json['headers'] = headers;
    if (initialContextTemplate != null)
      json['initialContextTemplate'] = initialContextTemplate;
    if (parameters != null)
      json['parameters'] = parameters;
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

  static List<DataSourceDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<DataSourceDetails>() : json.map((value) => DataSourceDetails.fromJson(value)).toList();
  }

  static Map<String, DataSourceDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DataSourceDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DataSourceDetails.fromJson(value));
    }
    return map;
  }
}

