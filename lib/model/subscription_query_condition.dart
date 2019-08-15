part of azure_devops_sdk.api;

class SubscriptionQueryCondition {
  
  ISubscriptionFilter filter = null;
  /* Flags to specify the the type subscriptions to query for. */
  String flags = null;
  //enum flagsEnum {  none,  groupSubscription,  contributedSubscription,  canOptOut,  teamSubscription,  oneActorMatches,  };{
  /* Scope that matching subscriptions must have. */
  String scope = null;
  /* ID of the subscriber (user or group) that matching subscriptions must be subscribed to. */
  String subscriberId = null;
  /* ID of the subscription to query for. */
  String subscriptionId = null;
  SubscriptionQueryCondition();

  @override
  String toString() {
    return 'SubscriptionQueryCondition[filter=$filter, flags=$flags, scope=$scope, subscriberId=$subscriberId, subscriptionId=$subscriptionId, ]';
  }

  SubscriptionQueryCondition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['filter'] == null) {
      filter = null;
    } else {
      filter = ISubscriptionFilter.fromJson(json['filter']);
    }
    if (json['flags'] == null) {
      flags = null;
    } else {
          flags = json['flags'];
    }
    if (json['scope'] == null) {
      scope = null;
    } else {
          scope = json['scope'];
    }
    if (json['subscriberId'] == null) {
      subscriberId = null;
    } else {
          subscriberId = json['subscriberId'];
    }
    if (json['subscriptionId'] == null) {
      subscriptionId = null;
    } else {
          subscriptionId = json['subscriptionId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (filter != null)
      json['filter'] = filter;
    if (flags != null)
      json['flags'] = flags;
    if (scope != null)
      json['scope'] = scope;
    if (subscriberId != null)
      json['subscriberId'] = subscriberId;
    if (subscriptionId != null)
      json['subscriptionId'] = subscriptionId;
    return json;
  }

  static List<SubscriptionQueryCondition> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionQueryCondition>() : json.map((value) => SubscriptionQueryCondition.fromJson(value)).toList();
  }

  static Map<String, SubscriptionQueryCondition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionQueryCondition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionQueryCondition.fromJson(value));
    }
    return map;
  }
}

