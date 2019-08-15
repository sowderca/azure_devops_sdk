part of azure_devops_sdk.api;

class SubscriptionUserSettings {
  /* Indicates whether the user will receive notifications for the associated group subscription. */
  bool optedOut = null;
  SubscriptionUserSettings();

  @override
  String toString() {
    return 'SubscriptionUserSettings[optedOut=$optedOut, ]';
  }

  SubscriptionUserSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['optedOut'] == null) {
      optedOut = null;
    } else {
          optedOut = json['optedOut'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (optedOut != null)
      json['optedOut'] = optedOut;
    return json;
  }

  static List<SubscriptionUserSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionUserSettings>() : json.map((value) => SubscriptionUserSettings.fromJson(value)).toList();
  }

  static Map<String, SubscriptionUserSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionUserSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionUserSettings.fromJson(value));
    }
    return map;
  }
}

