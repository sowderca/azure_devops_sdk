part of azure_devops_sdk.api;

class NotificationSubscriber {
  /* Indicates how the subscriber should be notified by default. */
  String deliveryPreference = null;
  //enum deliveryPreferenceEnum {  noDelivery,  preferredEmailAddress,  eachMember,  useDefault,  };{
  
  String flags = null;
  //enum flagsEnum {  none,  deliveryPreferencesEditable,  supportsPreferredEmailAddressDelivery,  supportsEachMemberDelivery,  supportsNoDelivery,  isUser,  isGroup,  isTeam,  };{
  /* Identifier of the subscriber. */
  String id = null;
  /* Preferred email address of the subscriber. A null or empty value indicates no preferred email address has been set. */
  String preferredEmailAddress = null;
  NotificationSubscriber();

  @override
  String toString() {
    return 'NotificationSubscriber[deliveryPreference=$deliveryPreference, flags=$flags, id=$id, preferredEmailAddress=$preferredEmailAddress, ]';
  }

  NotificationSubscriber.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deliveryPreference'] == null) {
      deliveryPreference = null;
    } else {
          deliveryPreference = json['deliveryPreference'];
    }
    if (json['flags'] == null) {
      flags = null;
    } else {
          flags = json['flags'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
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
    if (flags != null)
      json['flags'] = flags;
    if (id != null)
      json['id'] = id;
    if (preferredEmailAddress != null)
      json['preferredEmailAddress'] = preferredEmailAddress;
    return json;
  }

  static List<NotificationSubscriber> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationSubscriber>() : json.map((value) => NotificationSubscriber.fromJson(value)).toList();
  }

  static Map<String, NotificationSubscriber> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationSubscriber>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationSubscriber.fromJson(value));
    }
    return map;
  }
}

