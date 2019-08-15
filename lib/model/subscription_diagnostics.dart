part of azure_devops_sdk.api;

class SubscriptionDiagnostics {
  
  SubscriptionTracing deliveryResults = null;
  
  SubscriptionTracing deliveryTracing = null;
  
  SubscriptionTracing evaluationTracing = null;
  SubscriptionDiagnostics();

  @override
  String toString() {
    return 'SubscriptionDiagnostics[deliveryResults=$deliveryResults, deliveryTracing=$deliveryTracing, evaluationTracing=$evaluationTracing, ]';
  }

  SubscriptionDiagnostics.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deliveryResults'] == null) {
      deliveryResults = null;
    } else {
      deliveryResults = SubscriptionTracing.fromJson(json['deliveryResults']);
    }
    if (json['deliveryTracing'] == null) {
      deliveryTracing = null;
    } else {
      deliveryTracing = SubscriptionTracing.fromJson(json['deliveryTracing']);
    }
    if (json['evaluationTracing'] == null) {
      evaluationTracing = null;
    } else {
      evaluationTracing = SubscriptionTracing.fromJson(json['evaluationTracing']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deliveryResults != null)
      json['deliveryResults'] = deliveryResults;
    if (deliveryTracing != null)
      json['deliveryTracing'] = deliveryTracing;
    if (evaluationTracing != null)
      json['evaluationTracing'] = evaluationTracing;
    return json;
  }

  static List<SubscriptionDiagnostics> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionDiagnostics>() : json.map((value) => SubscriptionDiagnostics.fromJson(value)).toList();
  }

  static Map<String, SubscriptionDiagnostics> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionDiagnostics>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionDiagnostics.fromJson(value));
    }
    return map;
  }
}

