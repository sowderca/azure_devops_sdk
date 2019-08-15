part of azure_devops_sdk.api;

class NotificationStatisticsQueryConditions {
  
  DateTime endDate = null;
  
  int hitCountMinimum = null;
  
  String path = null;
  
  DateTime startDate = null;
  
  String type = null;
  //enum typeEnum {  notificationBySubscription,  eventsByEventType,  notificationByEventType,  eventsByEventTypePerUser,  notificationByEventTypePerUser,  events,  notifications,  notificationFailureBySubscription,  unprocessedRangeStart,  unprocessedEventsByPublisher,  unprocessedEventDelayByPublisher,  unprocessedNotificationsByChannelByPublisher,  unprocessedNotificationDelayByChannelByPublisher,  delayRangeStart,  totalPipelineTime,  notificationPipelineTime,  eventPipelineTime,  hourlyRangeStart,  hourlyNotificationBySubscription,  hourlyEventsByEventTypePerUser,  hourlyEvents,  hourlyNotifications,  hourlyUnprocessedEventsByPublisher,  hourlyUnprocessedEventDelayByPublisher,  hourlyUnprocessedNotificationsByChannelByPublisher,  hourlyUnprocessedNotificationDelayByChannelByPublisher,  hourlyTotalPipelineTime,  hourlyNotificationPipelineTime,  hourlyEventPipelineTime,  };{
  
  IdentityRef user = null;
  NotificationStatisticsQueryConditions();

  @override
  String toString() {
    return 'NotificationStatisticsQueryConditions[endDate=$endDate, hitCountMinimum=$hitCountMinimum, path=$path, startDate=$startDate, type=$type, user=$user, ]';
  }

  NotificationStatisticsQueryConditions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['endDate'] == null) {
      endDate = null;
    } else {
      endDate = DateTime.parse(json['endDate']);
    }
    if (json['hitCountMinimum'] == null) {
      hitCountMinimum = null;
    } else {
          hitCountMinimum = json['hitCountMinimum'];
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['startDate'] == null) {
      startDate = null;
    } else {
      startDate = DateTime.parse(json['startDate']);
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
    if (endDate != null)
      json['endDate'] = endDate == null ? null : endDate.toUtc().toIso8601String();
    if (hitCountMinimum != null)
      json['hitCountMinimum'] = hitCountMinimum;
    if (path != null)
      json['path'] = path;
    if (startDate != null)
      json['startDate'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (type != null)
      json['type'] = type;
    if (user != null)
      json['user'] = user;
    return json;
  }

  static List<NotificationStatisticsQueryConditions> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationStatisticsQueryConditions>() : json.map((value) => NotificationStatisticsQueryConditions.fromJson(value)).toList();
  }

  static Map<String, NotificationStatisticsQueryConditions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationStatisticsQueryConditions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationStatisticsQueryConditions.fromJson(value));
    }
    return map;
  }
}

