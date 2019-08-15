part of azure_devops_sdk.api;

class SubscriptionsQuery {
  /* Optional consumer action id to restrict the results to (null for any) */
  String consumerActionId = null;
  /* Optional consumer id to restrict the results to (null for any) */
  String consumerId = null;
  /* Filter for subscription consumer inputs */
  List<InputFilter> consumerInputFilters = [];
  /* Optional event type id to restrict the results to (null for any) */
  String eventType = null;
  /* Optional publisher id to restrict the results to (null for any) */
  String publisherId = null;
  /* Filter for subscription publisher inputs */
  List<InputFilter> publisherInputFilters = [];
  /* Results from the query */
  List<Subscription> results = [];
  /* Optional subscriber filter. */
  String subscriberId = null;
  SubscriptionsQuery();

  @override
  String toString() {
    return 'SubscriptionsQuery[consumerActionId=$consumerActionId, consumerId=$consumerId, consumerInputFilters=$consumerInputFilters, eventType=$eventType, publisherId=$publisherId, publisherInputFilters=$publisherInputFilters, results=$results, subscriberId=$subscriberId, ]';
  }

  SubscriptionsQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['consumerActionId'] == null) {
      consumerActionId = null;
    } else {
          consumerActionId = json['consumerActionId'];
    }
    if (json['consumerId'] == null) {
      consumerId = null;
    } else {
          consumerId = json['consumerId'];
    }
    if (json['consumerInputFilters'] == null) {
      consumerInputFilters = null;
    } else {
      consumerInputFilters = InputFilter.listFromJson(json['consumerInputFilters']);
    }
    if (json['eventType'] == null) {
      eventType = null;
    } else {
          eventType = json['eventType'];
    }
    if (json['publisherId'] == null) {
      publisherId = null;
    } else {
          publisherId = json['publisherId'];
    }
    if (json['publisherInputFilters'] == null) {
      publisherInputFilters = null;
    } else {
      publisherInputFilters = InputFilter.listFromJson(json['publisherInputFilters']);
    }
    if (json['results'] == null) {
      results = null;
    } else {
      results = Subscription.listFromJson(json['results']);
    }
    if (json['subscriberId'] == null) {
      subscriberId = null;
    } else {
          subscriberId = json['subscriberId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (consumerActionId != null)
      json['consumerActionId'] = consumerActionId;
    if (consumerId != null)
      json['consumerId'] = consumerId;
    if (consumerInputFilters != null)
      json['consumerInputFilters'] = consumerInputFilters;
    if (eventType != null)
      json['eventType'] = eventType;
    if (publisherId != null)
      json['publisherId'] = publisherId;
    if (publisherInputFilters != null)
      json['publisherInputFilters'] = publisherInputFilters;
    if (results != null)
      json['results'] = results;
    if (subscriberId != null)
      json['subscriberId'] = subscriberId;
    return json;
  }

  static List<SubscriptionsQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionsQuery>() : json.map((value) => SubscriptionsQuery.fromJson(value)).toList();
  }

  static Map<String, SubscriptionsQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionsQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionsQuery.fromJson(value));
    }
    return map;
  }
}

