part of azure_devops_sdk.api;

class SubscriptionInputValuesQuery {
  /* The input values to return on input, and the result from the consumer on output. */
  List<InputValues> inputValues = [];
  /* The scope at which the properties to query belong */
  String scope = null;
  //enum scopeEnum {  publisher,  consumer,  };{
  
  Subscription subscription = null;
  SubscriptionInputValuesQuery();

  @override
  String toString() {
    return 'SubscriptionInputValuesQuery[inputValues=$inputValues, scope=$scope, subscription=$subscription, ]';
  }

  SubscriptionInputValuesQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['inputValues'] == null) {
      inputValues = null;
    } else {
      inputValues = InputValues.listFromJson(json['inputValues']);
    }
    if (json['scope'] == null) {
      scope = null;
    } else {
          scope = json['scope'];
    }
    if (json['subscription'] == null) {
      subscription = null;
    } else {
      subscription = Subscription.fromJson(json['subscription']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (inputValues != null)
      json['inputValues'] = inputValues;
    if (scope != null)
      json['scope'] = scope;
    if (subscription != null)
      json['subscription'] = subscription;
    return json;
  }

  static List<SubscriptionInputValuesQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionInputValuesQuery>() : json.map((value) => SubscriptionInputValuesQuery.fromJson(value)).toList();
  }

  static Map<String, SubscriptionInputValuesQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionInputValuesQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionInputValuesQuery.fromJson(value));
    }
    return map;
  }
}

