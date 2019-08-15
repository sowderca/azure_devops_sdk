part of azure_devops_sdk.api;

class DataSourceBinding {
  /* Pagination format supported by this data source(ContinuationToken/SkipTop). */
  String callbackContextTemplate = null;
  /* Subsequent calls needed? */
  String callBackRequiredTemplate = null;
  /* Name of the datasource. */
  String dataSourceName = null;
  /* Endpoint ID of the datasource. */
  String endpointId = null;
  /* Endpoint URL of the datasource. */
  String endpointUrl = null;
  /* Defines the initial value of the query params */
  String initialContextTemplate = null;
  /* Parameters of the datasource. */
  Map<String, String> parameters = {};
  /* Gets or sets http request body */
  String requestContent = null;
  /* Gets or sets http request verb */
  String requestVerb = null;
  /* Result selector applied on output of datasource result, for example jsonpath:$.value[?(@.properties.isEnabled == true)]. */
  String resultSelector = null;
  /* Format of the return results, for example. { \"Value\" : \"{{{id}}}\", \"DisplayValue\" : \"{{{name}}}\" }. */
  String resultTemplate = null;
  /* Target of the datasource. */
  String target = null;
  DataSourceBinding();

  @override
  String toString() {
    return 'DataSourceBinding[callbackContextTemplate=$callbackContextTemplate, callBackRequiredTemplate=$callBackRequiredTemplate, dataSourceName=$dataSourceName, endpointId=$endpointId, endpointUrl=$endpointUrl, initialContextTemplate=$initialContextTemplate, parameters=$parameters, requestContent=$requestContent, requestVerb=$requestVerb, resultSelector=$resultSelector, resultTemplate=$resultTemplate, target=$target, ]';
  }

  DataSourceBinding.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['callbackContextTemplate'] == null) {
      callbackContextTemplate = null;
    } else {
          callbackContextTemplate = json['callbackContextTemplate'];
    }
    if (json['callBackRequiredTemplate'] == null) {
      callBackRequiredTemplate = null;
    } else {
          callBackRequiredTemplate = json['callBackRequiredTemplate'];
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
    if (callBackRequiredTemplate != null)
      json['callBackRequiredTemplate'] = callBackRequiredTemplate;
    if (dataSourceName != null)
      json['dataSourceName'] = dataSourceName;
    if (endpointId != null)
      json['endpointId'] = endpointId;
    if (endpointUrl != null)
      json['endpointUrl'] = endpointUrl;
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

  static List<DataSourceBinding> listFromJson(List<dynamic> json) {
    return json == null ? List<DataSourceBinding>() : json.map((value) => DataSourceBinding.fromJson(value)).toList();
  }

  static Map<String, DataSourceBinding> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DataSourceBinding>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DataSourceBinding.fromJson(value));
    }
    return map;
  }
}

