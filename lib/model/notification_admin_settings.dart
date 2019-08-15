part of azure_devops_sdk.api;

class NotificationAdminSettings {
  /* The default group delivery preference for groups in this collection */
  String defaultGroupDeliveryPreference = null;
  //enum defaultGroupDeliveryPreferenceEnum {  noDelivery,  eachMember,  };{
  NotificationAdminSettings();

  @override
  String toString() {
    return 'NotificationAdminSettings[defaultGroupDeliveryPreference=$defaultGroupDeliveryPreference, ]';
  }

  NotificationAdminSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['defaultGroupDeliveryPreference'] == null) {
      defaultGroupDeliveryPreference = null;
    } else {
          defaultGroupDeliveryPreference = json['defaultGroupDeliveryPreference'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (defaultGroupDeliveryPreference != null)
      json['defaultGroupDeliveryPreference'] = defaultGroupDeliveryPreference;
    return json;
  }

  static List<NotificationAdminSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationAdminSettings>() : json.map((value) => NotificationAdminSettings.fromJson(value)).toList();
  }

  static Map<String, NotificationAdminSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationAdminSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationAdminSettings.fromJson(value));
    }
    return map;
  }
}

