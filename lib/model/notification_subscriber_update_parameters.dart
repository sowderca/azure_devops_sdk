part of azure_devops_sdk.api;

class NotificationSubscriberUpdateParameters {
  /* New delivery preference for the subscriber (indicates how the subscriber should be notified). */
  String deliveryPreference = null;
  //enum deliveryPreferenceEnum {  noDelivery,  preferredEmailAddress,  eachMember,  useDefault,  };{
  /* New preferred email address for the subscriber. Specify an empty string to clear the current address. */
  String preferredEmailAddress = null;
  NotificationSubscriberUpdateParameters();

  @override
  String toString() {
    return 'NotificationSubscriberUpdateParameters[deliveryPreference=$deliveryPreference, preferredEmailAddress=$preferredEmailAddress, ]';
  }

  NotificationSubscriberUpdateParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deliveryPreference'] == null) {
      deliveryPreference = null;
    } else {
          deliveryPreference = json['deliveryPreference'];
    }
    if (json['preferredEmailAddress'] == null) {
      preferredEmailAddress = null;
    } else {
          preferredEmailAddress = json['preferredEmailAddress'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deliveryPreference != null)
      json['deliveryPreference'] = deliveryPreference;
    if (preferredEmailAddress != null)
      json['preferredEmailAddress'] = preferredEmailAddress;
    return json;
  }

  static List<NotificationSubscriberUpdateParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationSubscriberUpdateParameters>() : json.map((value) => NotificationSubscriberUpdateParameters.fromJson(value)).toList();
  }

  static Map<String, NotificationSubscriberUpdateParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationSubscriberUpdateParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationSubscriberUpdateParameters.fromJson(value));
    }
    return map;
  }
}

