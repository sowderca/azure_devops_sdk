part of azure_devops_sdk.api;

class AzureSubscriptionQueryResult {
  
  String errorMessage = null;
  
  List<AzureSubscription> value = [];
  AzureSubscriptionQueryResult();

  @override
  String toString() {
    return 'AzureSubscriptionQueryResult[errorMessage=$errorMessage, value=$value, ]';
  }

  AzureSubscriptionQueryResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['errorMessage'] == null) {
      errorMessage = null;
    } else {
          errorMessage = json['errorMessage'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
      value = AzureSubscription.listFromJson(json['value']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<AzureSubscriptionQueryResult> listFromJson(List<dynamic> json) {
    return json == null ? List<AzureSubscriptionQueryResult>() : json.map((value) => AzureSubscriptionQueryResult.fromJson(value)).toList();
  }

  static Map<String, AzureSubscriptionQueryResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AzureSubscriptionQueryResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AzureSubscriptionQueryResult.fromJson(value));
    }
    return map;
  }
}

