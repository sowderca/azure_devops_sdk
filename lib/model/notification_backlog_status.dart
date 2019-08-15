part of azure_devops_sdk.api;

class NotificationBacklogStatus {
  
  DateTime captureTime = null;
  
  String channel = null;
  
  String jobId = null;
  
  DateTime lastJobBatchStartTime = null;
  
  DateTime lastJobProcessedTime = null;
  
  DateTime lastNotificationBatchStartTime = null;
  
  DateTime lastNotificationProcessedTime = null;
  
  DateTime oldestPendingNotificationTime = null;
  
  String publisher = null;
  /* Null status is unprocessed */
  String status = null;
  
  int unprocessedNotifications = null;
  NotificationBacklogStatus();

  @override
  String toString() {
    return 'NotificationBacklogStatus[captureTime=$captureTime, channel=$channel, jobId=$jobId, lastJobBatchStartTime=$lastJobBatchStartTime, lastJobProcessedTime=$lastJobProcessedTime, lastNotificationBatchStartTime=$lastNotificationBatchStartTime, lastNotificationProcessedTime=$lastNotificationProcessedTime, oldestPendingNotificationTime=$oldestPendingNotificationTime, publisher=$publisher, status=$status, unprocessedNotifications=$unprocessedNotifications, ]';
  }

  NotificationBacklogStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['captureTime'] == null) {
      captureTime = null;
    } else {
      captureTime = DateTime.parse(json['captureTime']);
    }
    if (json['channel'] == null) {
      channel = null;
    } else {
          channel = json['channel'];
    }
    if (json['jobId'] == null) {
      jobId = null;
    } else {
          jobId = json['jobId'];
    }
    if (json['lastJobBatchStartTime'] == null) {
      lastJobBatchStartTime = null;
    } else {
      lastJobBatchStartTime = DateTime.parse(json['lastJobBatchStartTime']);
    }
    if (json['lastJobProcessedTime'] == null) {
      lastJobProcessedTime = null;
    } else {
      lastJobProcessedTime = DateTime.parse(json['lastJobProcessedTime']);
    }
    if (json['lastNotificationBatchStartTime'] == null) {
      lastNotificationBatchStartTime = null;
    } else {
      lastNotificationBatchStartTime = DateTime.parse(json['lastNotificationBatchStartTime']);
    }
    if (json['lastNotificationProcessedTime'] == null) {
      lastNotificationProcessedTime = null;
    } else {
      lastNotificationProcessedTime = DateTime.parse(json['lastNotificationProcessedTime']);
    }
    if (json['oldestPendingNotificationTime'] == null) {
      oldestPendingNotificationTime = null;
    } else {
      oldestPendingNotificationTime = DateTime.parse(json['oldestPendingNotificationTime']);
    }
    if (json['publisher'] == null) {
      publisher = null;
    } else {
          publisher = json['publisher'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['unprocessedNotifications'] == null) {
      unprocessedNotifications = null;
    } else {
          unprocessedNotifications = json['unprocessedNotifications'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (captureTime != null)
      json['captureTime'] = captureTime == null ? null : captureTime.toUtc().toIso8601String();
    if (channel != null)
      json['channel'] = channel;
    if (jobId != null)
      json['jobId'] = jobId;
    if (lastJobBatchStartTime != null)
      json['lastJobBatchStartTime'] = lastJobBatchStartTime == null ? null : lastJobBatchStartTime.toUtc().toIso8601String();
    if (lastJobProcessedTime != null)
      json['lastJobProcessedTime'] = lastJobProcessedTime == null ? null : lastJobProcessedTime.toUtc().toIso8601String();
    if (lastNotificationBatchStartTime != null)
      json['lastNotificationBatchStartTime'] = lastNotificationBatchStartTime == null ? null : lastNotificationBatchStartTime.toUtc().toIso8601String();
    if (lastNotificationProcessedTime != null)
      json['lastNotificationProcessedTime'] = lastNotificationProcessedTime == null ? null : lastNotificationProcessedTime.toUtc().toIso8601String();
    if (oldestPendingNotificationTime != null)
      json['oldestPendingNotificationTime'] = oldestPendingNotificationTime == null ? null : oldestPendingNotificationTime.toUtc().toIso8601String();
    if (publisher != null)
      json['publisher'] = publisher;
    if (status != null)
      json['status'] = status;
    if (unprocessedNotifications != null)
      json['unprocessedNotifications'] = unprocessedNotifications;
    return json;
  }

  static List<NotificationBacklogStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationBacklogStatus>() : json.map((value) => NotificationBacklogStatus.fromJson(value)).toList();
  }

  static Map<String, NotificationBacklogStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationBacklogStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationBacklogStatus.fromJson(value));
    }
    return map;
  }
}

