part of azure_devops_sdk.api;

class NotificationStatistic {
  
  DateTime date = null;
  
  int hitCount = null;
  
  String path = null;
  
  String type = null;
  //enum typeEnum {  notificationBySubscription,  eventsByEventType,  notificationByEventType,  eventsByEventTypePerUser,  notificationByEventTypePerUser,  events,  notifications,  notificationFailureBySubscription,  unprocessedRangeStart,  unprocessedEventsByPublisher,  unprocessedEventDelayByPublisher,  unprocessedNotificationsByChannelByPublisher,  unprocessedNotificationDelayByChannelByPublisher,  delayRangeStart,  totalPipelineTime,  notificationPipelineTime,  eventPipelineTime,  hourlyRangeStart,  hourlyNotificationBySubscription,  hourlyEventsByEventTypePerUser,  hourlyEvents,  hourlyNotifications,  hourlyUnprocessedEventsByPublisher,  hourlyUnprocessedEventDelayByPublisher,  hourlyUnprocessedNotificationsByChannelByPublisher,  hourlyUnprocessedNotificationDelayByChannelByPublisher,  hourlyTotalPipelineTime,  hourlyNotificationPipelineTime,  hourlyEventPipelineTime,  };{
  
  IdentityRef user = null;
  NotificationStatistic();

  @override
  String toString() {
    return 'NotificationStatistic[date=$date, hitCount=$hitCount, path=$path, type=$type, user=$user, ]';
  }

  NotificationStatistic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['date'] == null) {
      date = null;
    } else {
      date = DateTime.parse(json['date']);
    }
    if (json['hitCount'] == null) {
      hitCount = null;
    } else {
          hitCount = json['hitCount'];
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['user'] == null) {
      user = null;
    } else {
      user = IdentityRef.fromJson(json['user']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (date != null)
      json['date'] = date == null ? null : date.toUtc().toIso8601String();
    if (hitCount != null)
      json['hitCount'] = hitCount;
    if (path != null)
      json['path'] = path;
    if (type != null)
      json['type'] = type;
    if (user != null)
      json['user'] = user;
    return json;
  }

  static List<NotificationStatistic> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationStatistic>() : json.map((value) => NotificationStatistic.fromJson(value)).toList();
  }

  static Map<String, NotificationStatistic> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationStatistic>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationStatistic.fromJson(value));
    }
    return map;
  }
}

