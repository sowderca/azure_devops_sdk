part of azure_devops_sdk.api;

class SubscriptionQuery {
  /* One or more conditions to query on. If more than 2 conditions are specified, the combined results of each condition is returned (i.e. conditions are logically OR'ed). */
  List<SubscriptionQueryCondition> conditions = [];
  /* Flags the refine the types of subscriptions that will be returned from the query. */
  String queryFlags = null;
  //enum queryFlagsEnum {  none,  includeInvalidSubscriptions,  includeDeletedSubscriptions,  includeFilterDetails,  alwaysReturnBasicInformation,  includeSystemSubscriptions,  };{
  SubscriptionQuery();

  @override
  String toString() {
    return 'SubscriptionQuery[conditions=$conditions, queryFlags=$queryFlags, ]';
  }

  SubscriptionQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['conditions'] == null) {
      conditions = null;
    } else {
      conditions = SubscriptionQueryCondition.listFromJson(json['conditions']);
    }
    if (json['queryFlags'] == null) {
      queryFlags = null;
    } else {
          queryFlags = json['queryFlags'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (conditions != null)
      json['conditions'] = conditions;
    if (queryFlags != null)
      json['queryFlags'] = queryFlags;
    return json;
  }

  static List<SubscriptionQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionQuery>() : json.map((value) => SubscriptionQuery.fromJson(value)).toList();
  }

  static Map<String, SubscriptionQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionQuery.fromJson(value));
    }
    return map;
  }
}

