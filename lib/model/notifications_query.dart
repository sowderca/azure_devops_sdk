part of azure_devops_sdk.api;

class NotificationsQuery {
  /* The subscriptions associated with the notifications returned from the query */
  List<Subscription> associatedSubscriptions = [];
  /* If true, we will return all notification history for the query provided; otherwise, the summary is returned. */
  bool includeDetails = null;
  /* Optional maximum date at which the notification was created */
  DateTime maxCreatedDate = null;
  /* Optional maximum number of overall results to include */
  int maxResults = null;
  /* Optional maximum number of results for each subscription. Only takes effect when a list of subscription ids is supplied in the query. */
  int maxResultsPerSubscription = null;
  /* Optional minimum date at which the notification was created */
  DateTime minCreatedDate = null;
  /* Optional publisher id to restrict the results to */
  String publisherId = null;
  /* Results from the query */
  List<Notification> results = [];
  /* Optional notification result type to filter results to */
  String resultType = null;
  //enum resultTypeEnum {  pending,  succeeded,  failed,  filtered,  };{
  /* Optional notification status to filter results to */
  String status = null;
  //enum statusEnum {  queued,  processing,  requestInProgress,  completed,  };{
  /* Optional list of subscription ids to restrict the results to */
  List<String> subscriptionIds = [];
  /* Summary of notifications - the count of each result type (success, fail, ..). */
  List<NotificationSummary> summary = [];
  NotificationsQuery();

  @override
  String toString() {
    return 'NotificationsQuery[associatedSubscriptions=$associatedSubscriptions, includeDetails=$includeDetails, maxCreatedDate=$maxCreatedDate, maxResults=$maxResults, maxResultsPerSubscription=$maxResultsPerSubscription, minCreatedDate=$minCreatedDate, publisherId=$publisherId, results=$results, resultType=$resultType, status=$status, subscriptionIds=$subscriptionIds, summary=$summary, ]';
  }

  NotificationsQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['associatedSubscriptions'] == null) {
      associatedSubscriptions = null;
    } else {
      associatedSubscriptions = Subscription.listFromJson(json['associatedSubscriptions']);
    }
    if (json['includeDetails'] == null) {
      includeDetails = null;
    } else {
          includeDetails = json['includeDetails'];
    }
    if (json['maxCreatedDate'] == null) {
      maxCreatedDate = null;
    } else {
      maxCreatedDate = DateTime.parse(json['maxCreatedDate']);
    }
    if (json['maxResults'] == null) {
      maxResults = null;
    } else {
          maxResults = json['maxResults'];
    }
    if (json['maxResultsPerSubscription'] == null) {
      maxResultsPerSubscription = null;
    } else {
          maxResultsPerSubscription = json['maxResultsPerSubscription'];
    }
    if (json['minCreatedDate'] == null) {
      minCreatedDate = null;
    } else {
      minCreatedDate = DateTime.parse(json['minCreatedDate']);
    }
    if (json['publisherId'] == null) {
      publisherId = null;
    } else {
          publisherId = json['publisherId'];
    }
    if (json['results'] == null) {
      results = null;
    } else {
      results = Notification.listFromJson(json['results']);
    }
    if (json['resultType'] == null) {
      resultType = null;
    } else {
          resultType = json['resultType'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['subscriptionIds'] == null) {
      subscriptionIds = null;
    } else {
      subscriptionIds = (json['subscriptionIds'] as List).cast<String>();
    }
    if (json['summary'] == null) {
      summary = null;
    } else {
      summary = NotificationSummary.listFromJson(json['summary']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (associatedSubscriptions != null)
      json['associatedSubscriptions'] = associatedSubscriptions;
    if (includeDetails != null)
      json['includeDetails'] = includeDetails;
    if (maxCreatedDate != null)
      json['maxCreatedDate'] = maxCreatedDate == null ? null : maxCreatedDate.toUtc().toIso8601String();
    if (maxResults != null)
      json['maxResults'] = maxResults;
    if (maxResultsPerSubscription != null)
      json['maxResultsPerSubscription'] = maxResultsPerSubscription;
    if (minCreatedDate != null)
      json['minCreatedDate'] = minCreatedDate == null ? null : minCreatedDate.toUtc().toIso8601String();
    if (publisherId != null)
      json['publisherId'] = publisherId;
    if (results != null)
      json['results'] = results;
    if (resultType != null)
      json['resultType'] = resultType;
    if (status != null)
      json['status'] = status;
    if (subscriptionIds != null)
      json['subscriptionIds'] = subscriptionIds;
    if (summary != null)
      json['summary'] = summary;
    return json;
  }

  static List<NotificationsQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationsQuery>() : json.map((value) => NotificationsQuery.fromJson(value)).toList();
  }

  static Map<String, NotificationsQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationsQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationsQuery.fromJson(value));
    }
    return map;
  }
}

