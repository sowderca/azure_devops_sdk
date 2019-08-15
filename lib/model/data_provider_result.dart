part of azure_devops_sdk.api;

class DataProviderResult {
  /* This is the set of data providers that were requested, but either they were defined as client providers, or as remote providers that failed and may be retried by the client. */
  Map<String, ClientDataProviderQuery> clientProviders = {};
  /* Property bag of data keyed off of the data provider contribution id */
  Map<String, Object> data = {};
  /* Set of exceptions that occurred resolving the data providers. */
  Map<String, DataProviderExceptionDetails> exceptions = {};
  /* List of data providers resolved in the data-provider query */
  List<ResolvedDataProvider> resolvedProviders = [];
  /* Scope name applied to this data provider result. */
  String scopeName = null;
  /* Scope value applied to this data provider result. */
  String scopeValue = null;
  /* Property bag of shared data that was contributed to by any of the individual data providers */
  Map<String, Object> sharedData = {};
  DataProviderResult();

  @override
  String toString() {
    return 'DataProviderResult[clientProviders=$clientProviders, data=$data, exceptions=$exceptions, resolvedProviders=$resolvedProviders, scopeName=$scopeName, scopeValue=$scopeValue, sharedData=$sharedData, ]';
  }

  DataProviderResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['clientProviders'] == null) {
      clientProviders = null;
    } else {
      clientProviders = ClientDataProviderQuery.mapFromJson(json['clientProviders']);
    }
    if (json['data'] == null) {
      data = null;
    } else {
      data = Object.mapFromJson(json['data']);
    }
    if (json['exceptions'] == null) {
      exceptions = null;
    } else {
      exceptions = DataProviderExceptionDetails.mapFromJson(json['exceptions']);
    }
    if (json['resolvedProviders'] == null) {
      resolvedProviders = null;
    } else {
      resolvedProviders = ResolvedDataProvider.listFromJson(json['resolvedProviders']);
    }
    if (json['scopeName'] == null) {
      scopeName = null;
    } else {
          scopeName = json['scopeName'];
    }
    if (json['scopeValue'] == null) {
      scopeValue = null;
    } else {
          scopeValue = json['scopeValue'];
    }
    if (json['sharedData'] == null) {
      sharedData = null;
    } else {
      sharedData = Object.mapFromJson(json['sharedData']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (clientProviders != null)
      json['clientProviders'] = clientProviders;
    if (data != null)
      json['data'] = data;
    if (exceptions != null)
      json['exceptions'] = exceptions;
    if (resolvedProviders != null)
      json['resolvedProviders'] = resolvedProviders;
    if (scopeName != null)
      json['scopeName'] = scopeName;
    if (scopeValue != null)
      json['scopeValue'] = scopeValue;
    if (sharedData != null)
      json['sharedData'] = sharedData;
    return json;
  }

  static List<DataProviderResult> listFromJson(List<dynamic> json) {
    return json == null ? List<DataProviderResult>() : json.map((value) => DataProviderResult.fromJson(value)).toList();
  }

  static Map<String, DataProviderResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DataProviderResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DataProviderResult.fromJson(value));
    }
    return map;
  }
}

