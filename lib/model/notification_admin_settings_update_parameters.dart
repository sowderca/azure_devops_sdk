part of azure_devops_sdk.api;

class NotificationAdminSettingsUpdateParameters {
  
  String defaultGroupDeliveryPreference = null;
  //enum defaultGroupDeliveryPreferenceEnum {  noDelivery,  eachMember,  };{
  NotificationAdminSettingsUpdateParameters();

  @override
  String toString() {
    return 'NotificationAdminSettingsUpdateParameters[defaultGroupDeliveryPreference=$defaultGroupDeliveryPreference, ]';
  }

  NotificationAdminSettingsUpdateParameters.fromJson(Map<String, dynamic> json) {
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

  static List<NotificationAdminSettingsUpdateParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationAdminSettingsUpdateParameters>() : json.map((value) => NotificationAdminSettingsUpdateParameters.fromJson(value)).toList();
  }

  static Map<String, NotificationAdminSettingsUpdateParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationAdminSettingsUpdateParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationAdminSettingsUpdateParameters.fromJson(value));
    }
    return map;
  }
}

