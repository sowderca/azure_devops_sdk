part of azure_devops_sdk.api;

class SubscriptionEvaluationResult {
  /* Subscription evaluation job status */
  String evaluationJobStatus = null;
  //enum evaluationJobStatusEnum {  notSet,  queued,  inProgress,  cancelled,  succeeded,  failed,  timedOut,  notFound,  };{
  
  EventsEvaluationResult events = null;
  /* The requestId which is the subscription evaluation jobId */
  String id = null;
  
  NotificationsEvaluationResult notifications = null;
  SubscriptionEvaluationResult();

  @override
  String toString() {
    return 'SubscriptionEvaluationResult[evaluationJobStatus=$evaluationJobStatus, events=$events, id=$id, notifications=$notifications, ]';
  }

  SubscriptionEvaluationResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['evaluationJobStatus'] == null) {
      evaluationJobStatus = null;
    } else {
          evaluationJobStatus = json['evaluationJobStatus'];
    }
    if (json['events'] == null) {
      events = null;
    } else {
      events = EventsEvaluationResult.fromJson(json['events']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['notifications'] == null) {
      notifications = null;
    } else {
      notifications = NotificationsEvaluationResult.fromJson(json['notifications']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (evaluationJobStatus != null)
      json['evaluationJobStatus'] = evaluationJobStatus;
    if (events != null)
      json['events'] = events;
    if (id != null)
      json['id'] = id;
    if (notifications != null)
      json['notifications'] = notifications;
    return json;
  }

  static List<SubscriptionEvaluationResult> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionEvaluationResult>() : json.map((value) => SubscriptionEvaluationResult.fromJson(value)).toList();
  }

  static Map<String, SubscriptionEvaluationResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionEvaluationResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionEvaluationResult.fromJson(value));
    }
    return map;
  }
}

