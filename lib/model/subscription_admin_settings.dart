part of azure_devops_sdk.api;

class SubscriptionAdminSettings {
  /* If true, members of the group subscribed to the associated subscription cannot opt (choose not to get notified) */
  bool blockUserOptOut = null;
  SubscriptionAdminSettings();

  @override
  String toString() {
    return 'SubscriptionAdminSettings[blockUserOptOut=$blockUserOptOut, ]';
  }

  SubscriptionAdminSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['blockUserOptOut'] == null) {
      blockUserOptOut = null;
    } else {
          blockUserOptOut = json['blockUserOptOut'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (blockUserOptOut != null)
      json['blockUserOptOut'] = blockUserOptOut;
    return json;
  }

  static List<SubscriptionAdminSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionAdminSettings>() : json.map((value) => SubscriptionAdminSettings.fromJson(value)).toList();
  }

  static Map<String, SubscriptionAdminSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionAdminSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionAdminSettings.fromJson(value));
    }
    return map;
  }
}

