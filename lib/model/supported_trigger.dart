part of azure_devops_sdk.api;

class SupportedTrigger {
  /* The default interval to wait between polls (only relevant when NotificationType is Polling). */
  int defaultPollingInterval = null;
  /* How the trigger is notified of changes. */
  String notificationType = null;
  /* The capabilities supported by this trigger. */
  Map<String, Object> supportedCapabilities = {};
  /* The type of trigger. */
  String type = null;
  //enum typeEnum {  none,  continuousIntegration,  batchedContinuousIntegration,  schedule,  gatedCheckIn,  batchedGatedCheckIn,  pullRequest,  buildCompletion,  all,  };{
  SupportedTrigger();

  @override
  String toString() {
    return 'SupportedTrigger[defaultPollingInterval=$defaultPollingInterval, notificationType=$notificationType, supportedCapabilities=$supportedCapabilities, type=$type, ]';
  }

  SupportedTrigger.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['defaultPollingInterval'] == null) {
      defaultPollingInterval = null;
    } else {
          defaultPollingInterval = json['defaultPollingInterval'];
    }
    if (json['notificationType'] == null) {
      notificationType = null;
    } else {
          notificationType = json['notificationType'];
    }
    if (json['supportedCapabilities'] == null) {
      supportedCapabilities = null;
    } else {
      supportedCapabilities = Object.mapFromJson(json['supportedCapabilities']);
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (defaultPollingInterval != null)
      json['defaultPollingInterval'] = defaultPollingInterval;
    if (notificationType != null)
      json['notificationType'] = notificationType;
    if (supportedCapabilities != null)
      json['supportedCapabilities'] = supportedCapabilities;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<SupportedTrigger> listFromJson(List<dynamic> json) {
    return json == null ? List<SupportedTrigger>() : json.map((value) => SupportedTrigger.fromJson(value)).toList();
  }

  static Map<String, SupportedTrigger> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SupportedTrigger>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SupportedTrigger.fromJson(value));
    }
    return map;
  }
}

