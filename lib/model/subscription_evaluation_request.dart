part of azure_devops_sdk.api;

class SubscriptionEvaluationRequest {
  /* The min created date for the events used for matching in UTC. Use all events created since this date */
  DateTime minEventsCreatedDate = null;
  
  NotificationSubscriptionCreateParameters subscriptionCreateParameters = null;
  SubscriptionEvaluationRequest();

  @override
  String toString() {
    return 'SubscriptionEvaluationRequest[minEventsCreatedDate=$minEventsCreatedDate, subscriptionCreateParameters=$subscriptionCreateParameters, ]';
  }

  SubscriptionEvaluationRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['minEventsCreatedDate'] == null) {
      minEventsCreatedDate = null;
    } else {
      minEventsCreatedDate = DateTime.parse(json['minEventsCreatedDate']);
    }
    if (json['subscriptionCreateParameters'] == null) {
      subscriptionCreateParameters = null;
    } else {
      subscriptionCreateParameters = NotificationSubscriptionCreateParameters.fromJson(json['subscriptionCreateParameters']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (minEventsCreatedDate != null)
      json['minEventsCreatedDate'] = minEventsCreatedDate == null ? null : minEventsCreatedDate.toUtc().toIso8601String();
    if (subscriptionCreateParameters != null)
      json['subscriptionCreateParameters'] = subscriptionCreateParameters;
    return json;
  }

  static List<SubscriptionEvaluationRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionEvaluationRequest>() : json.map((value) => SubscriptionEvaluationRequest.fromJson(value)).toList();
  }

  static Map<String, SubscriptionEvaluationRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionEvaluationRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionEvaluationRequest.fromJson(value));
    }
    return map;
  }
}

