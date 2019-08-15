part of azure_devops_sdk.api;

class DataSourceBindingBase {
  /* Pagination format supported by this data source(ContinuationToken/SkipTop). */
  String callbackContextTemplate = null;
  /* Subsequent calls needed? */
  String callbackRequiredTemplate = null;
  /* Gets or sets the name of the data source. */
  String dataSourceName = null;
  /* Gets or sets the endpoint Id. */
  String endpointId = null;
  /* Gets or sets the url of the service endpoint. */
  String endpointUrl = null;
  /* Gets or sets the authorization headers. */
  List<AuthorizationHeader> headers = [];
  /* Defines the initial value of the query params */
  String initialContextTemplate = null;
  /* Gets or sets the parameters for the data source. */
  Map<String, String> parameters = {};
  /* Gets or sets http request body */
  String requestContent = null;
  /* Gets or sets http request verb */
  String requestVerb = null;
  /* Gets or sets the result selector. */
  String resultSelector = null;
  /* Gets or sets the result template. */
  String resultTemplate = null;
  /* Gets or sets the target of the data source. */
  String target = null;
  DataSourceBindingBase();

  @override
  String toString() {
    return 'DataSourceBindingBase[callbackContextTemplate=$callbackContextTemplate, callbackRequiredTemplate=$callbackRequiredTemplate, dataSourceName=$dataSourceName, endpointId=$endpointId, endpointUrl=$endpointUrl, headers=$headers, initialContextTemplate=$initialContextTemplate, parameters=$parameters, requestContent=$requestContent, requestVerb=$requestVerb, resultSelector=$resultSelector, resultTemplate=$resultTemplate, target=$target, ]';
  }

  DataSourceBindingBase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['dataSourceName'] == null) {
      dataSourceName = null;
    } else {
          dataSourceName = json['dataSourceName'];
    }
    if (json['endpointId'] == null) {
      endpointId = null;
    } else {
          endpointId = json['endpointId'];
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
    if (json['resultSelector'] == null) {
      resultSelector = null;
    } else {
          resultSelector = json['resultSelector'];
    }
    if (json['resultTemplate'] == null) {
      resultTemplate = null;
    } else {
          resultTemplate = json['resultTemplate'];
    }
    if (json['target'] == null) {
      target = null;
    } else {
          target = json['target'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (callbackContextTemplate != null)
      json['callbackContextTemplate'] = callbackContextTemplate;
    if (callbackRequiredTemplate != null)
      json['callbackRequiredTemplate'] = callbackRequiredTemplate;
    if (dataSourceName != null)
      json['dataSourceName'] = dataSourceName;
    if (endpointId != null)
      json['endpointId'] = endpointId;
    if (endpointUrl != null)
      json['endpointUrl'] = endpointUrl;
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
    if (resultSelector != null)
      json['resultSelector'] = resultSelector;
    if (resultTemplate != null)
      json['resultTemplate'] = resultTemplate;
    if (target != null)
      json['target'] = target;
    return json;
  }

  static List<DataSourceBindingBase> listFromJson(List<dynamic> json) {
    return json == null ? List<DataSourceBindingBase>() : json.map((value) => DataSourceBindingBase.fromJson(value)).toList();
  }

  static Map<String, DataSourceBindingBase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DataSourceBindingBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DataSourceBindingBase.fromJson(value));
    }
    return map;
  }
}

