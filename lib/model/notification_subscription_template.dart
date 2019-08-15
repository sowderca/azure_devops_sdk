part of azure_devops_sdk.api;

class NotificationSubscriptionTemplate {
  
  String description = null;
  
  ISubscriptionFilter filter = null;
  
  String id = null;
  
  NotificationEventType notificationEventInformation = null;
  
  String type = null;
  //enum typeEnum {  user,  team,  both,  none,  };{
  NotificationSubscriptionTemplate();

  @override
  String toString() {
    return 'NotificationSubscriptionTemplate[description=$description, filter=$filter, id=$id, notificationEventInformation=$notificationEventInformation, type=$type, ]';
  }

  NotificationSubscriptionTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['filter'] == null) {
      filter = null;
    } else {
      filter = ISubscriptionFilter.fromJson(json['filter']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['notificationEventInformation'] == null) {
      notificationEventInformation = null;
    } else {
      notificationEventInformation = NotificationEventType.fromJson(json['notificationEventInformation']);
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (filter != null)
      json['filter'] = filter;
    if (id != null)
      json['id'] = id;
    if (notificationEventInformation != null)
      json['notificationEventInformation'] = notificationEventInformation;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<NotificationSubscriptionTemplate> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationSubscriptionTemplate>() : json.map((value) => NotificationSubscriptionTemplate.fromJson(value)).toList();
  }

  static Map<String, NotificationSubscriptionTemplate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationSubscriptionTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationSubscriptionTemplate.fromJson(value));
    }
    return map;
  }
}

