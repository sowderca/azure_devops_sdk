part of azure_devops_sdk.api;

class NotificationsEvaluationResult {
  /* Count of generated notifications */
  int count = null;
  NotificationsEvaluationResult();

  @override
  String toString() {
    return 'NotificationsEvaluationResult[count=$count, ]';
  }

  NotificationsEvaluationResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    return json;
  }

  static List<NotificationsEvaluationResult> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationsEvaluationResult>() : json.map((value) => NotificationsEvaluationResult.fromJson(value)).toList();
  }

  static Map<String, NotificationsEvaluationResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationsEvaluationResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationsEvaluationResult.fromJson(value));
    }
    return map;
  }
}

