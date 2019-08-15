part of azure_devops_sdk.api;

class NotificationBatch {
  
  String endTime = null;
  
  int notificationCount = null;
  
  String notificationIds = null;
  
  List<DiagnosticNotification> problematicNotifications = [];
  
  String startTime = null;
  NotificationBatch();

  @override
  String toString() {
    return 'NotificationBatch[endTime=$endTime, notificationCount=$notificationCount, notificationIds=$notificationIds, problematicNotifications=$problematicNotifications, startTime=$startTime, ]';
  }

  NotificationBatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['endTime'] == null) {
      endTime = null;
    } else {
          endTime = json['endTime'];
    }
    if (json['notificationCount'] == null) {
      notificationCount = null;
    } else {
          notificationCount = json['notificationCount'];
    }
    if (json['notificationIds'] == null) {
      notificationIds = null;
    } else {
          notificationIds = json['notificationIds'];
    }
    if (json['problematicNotifications'] == null) {
      problematicNotifications = null;
    } else {
      problematicNotifications = DiagnosticNotification.listFromJson(json['problematicNotifications']);
    }
    if (json['startTime'] == null) {
      startTime = null;
    } else {
          startTime = json['startTime'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (endTime != null)
      json['endTime'] = endTime;
    if (notificationCount != null)
      json['notificationCount'] = notificationCount;
    if (notificationIds != null)
      json['notificationIds'] = notificationIds;
    if (problematicNotifications != null)
      json['problematicNotifications'] = problematicNotifications;
    if (startTime != null)
      json['startTime'] = startTime;
    return json;
  }

  static List<NotificationBatch> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationBatch>() : json.map((value) => NotificationBatch.fromJson(value)).toList();
  }

  static Map<String, NotificationBatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationBatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationBatch.fromJson(value));
    }
    return map;
  }
}

