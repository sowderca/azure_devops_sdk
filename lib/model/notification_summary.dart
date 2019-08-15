part of azure_devops_sdk.api;

class NotificationSummary {
  /* The notification results for this particular subscription. */
  List<NotificationResultsSummaryDetail> results = [];
  /* The subscription id associated with this notification */
  String subscriptionId = null;
  NotificationSummary();

  @override
  String toString() {
    return 'NotificationSummary[results=$results, subscriptionId=$subscriptionId, ]';
  }

  NotificationSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['results'] == null) {
      results = null;
    } else {
      results = NotificationResultsSummaryDetail.listFromJson(json['results']);
    }
    if (json['subscriptionId'] == null) {
      subscriptionId = null;
    } else {
          subscriptionId = json['subscriptionId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    if (subscriptionId != null)
      json['subscriptionId'] = subscriptionId;
    return json;
  }

  static List<NotificationSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationSummary>() : json.map((value) => NotificationSummary.fromJson(value)).toList();
  }

  static Map<String, NotificationSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationSummary.fromJson(value));
    }
    return map;
  }
}

