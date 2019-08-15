part of azure_devops_sdk.api;

class NotificationEventBacklogStatus {
  
  List<EventBacklogStatus> eventBacklogStatus = [];
  
  List<NotificationBacklogStatus> notificationBacklogStatus = [];
  NotificationEventBacklogStatus();

  @override
  String toString() {
    return 'NotificationEventBacklogStatus[eventBacklogStatus=$eventBacklogStatus, notificationBacklogStatus=$notificationBacklogStatus, ]';
  }

  NotificationEventBacklogStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['eventBacklogStatus'] == null) {
      eventBacklogStatus = null;
    } else {
      eventBacklogStatus = EventBacklogStatus.listFromJson(json['eventBacklogStatus']);
    }
    if (json['notificationBacklogStatus'] == null) {
      notificationBacklogStatus = null;
    } else {
      notificationBacklogStatus = NotificationBacklogStatus.listFromJson(json['notificationBacklogStatus']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (eventBacklogStatus != null)
      json['eventBacklogStatus'] = eventBacklogStatus;
    if (notificationBacklogStatus != null)
      json['notificationBacklogStatus'] = notificationBacklogStatus;
    return json;
  }

  static List<NotificationEventBacklogStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationEventBacklogStatus>() : json.map((value) => NotificationEventBacklogStatus.fromJson(value)).toList();
  }

  static Map<String, NotificationEventBacklogStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationEventBacklogStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationEventBacklogStatus.fromJson(value));
    }
    return map;
  }
}

