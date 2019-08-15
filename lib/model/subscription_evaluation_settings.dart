part of azure_devops_sdk.api;

class SubscriptionEvaluationSettings {
  /* Indicates whether subscription evaluation before saving is enabled or not */
  bool enabled = null;
  /* Time interval to check on subscription evaluation job in seconds */
  int interval = null;
  /* Threshold on the number of notifications for considering a subscription too noisy */
  int threshold = null;
  /* Time out for the subscription evaluation check in seconds */
  int timeOut = null;
  SubscriptionEvaluationSettings();

  @override
  String toString() {
    return 'SubscriptionEvaluationSettings[enabled=$enabled, interval=$interval, threshold=$threshold, timeOut=$timeOut, ]';
  }

  SubscriptionEvaluationSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['enabled'] == null) {
      enabled = null;
    } else {
          enabled = json['enabled'];
    }
    if (json['interval'] == null) {
      interval = null;
    } else {
          interval = json['interval'];
    }
    if (json['threshold'] == null) {
      threshold = null;
    } else {
          threshold = json['threshold'];
    }
    if (json['timeOut'] == null) {
      timeOut = null;
    } else {
          timeOut = json['timeOut'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (enabled != null)
      json['enabled'] = enabled;
    if (interval != null)
      json['interval'] = interval;
    if (threshold != null)
      json['threshold'] = threshold;
    if (timeOut != null)
      json['timeOut'] = timeOut;
    return json;
  }

  static List<SubscriptionEvaluationSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionEvaluationSettings>() : json.map((value) => SubscriptionEvaluationSettings.fromJson(value)).toList();
  }

  static Map<String, SubscriptionEvaluationSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionEvaluationSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionEvaluationSettings.fromJson(value));
    }
    return map;
  }
}

