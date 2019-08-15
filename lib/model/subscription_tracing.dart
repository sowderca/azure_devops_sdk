part of azure_devops_sdk.api;

class SubscriptionTracing {
  
  bool enabled = null;
  /* Trace until the specified end date. */
  DateTime endDate = null;
  /* The maximum number of result details to trace. */
  int maxTracedEntries = null;
  /* The date and time tracing started. */
  DateTime startDate = null;
  /* Trace until remaining count reaches 0. */
  int tracedEntries = null;
  SubscriptionTracing();

  @override
  String toString() {
    return 'SubscriptionTracing[enabled=$enabled, endDate=$endDate, maxTracedEntries=$maxTracedEntries, startDate=$startDate, tracedEntries=$tracedEntries, ]';
  }

  SubscriptionTracing.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['enabled'] == null) {
      enabled = null;
    } else {
          enabled = json['enabled'];
    }
    if (json['endDate'] == null) {
      endDate = null;
    } else {
      endDate = DateTime.parse(json['endDate']);
    }
    if (json['maxTracedEntries'] == null) {
      maxTracedEntries = null;
    } else {
          maxTracedEntries = json['maxTracedEntries'];
    }
    if (json['startDate'] == null) {
      startDate = null;
    } else {
      startDate = DateTime.parse(json['startDate']);
    }
    if (json['tracedEntries'] == null) {
      tracedEntries = null;
    } else {
          tracedEntries = json['tracedEntries'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (enabled != null)
      json['enabled'] = enabled;
    if (endDate != null)
      json['endDate'] = endDate == null ? null : endDate.toUtc().toIso8601String();
    if (maxTracedEntries != null)
      json['maxTracedEntries'] = maxTracedEntries;
    if (startDate != null)
      json['startDate'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (tracedEntries != null)
      json['tracedEntries'] = tracedEntries;
    return json;
  }

  static List<SubscriptionTracing> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionTracing>() : json.map((value) => SubscriptionTracing.fromJson(value)).toList();
  }

  static Map<String, SubscriptionTracing> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionTracing>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionTracing.fromJson(value));
    }
    return map;
  }
}

