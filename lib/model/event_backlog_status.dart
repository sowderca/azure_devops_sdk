part of azure_devops_sdk.api;

class EventBacklogStatus {
  
  DateTime captureTime = null;
  
  String jobId = null;
  
  DateTime lastEventBatchStartTime = null;
  
  DateTime lastEventProcessedTime = null;
  
  DateTime lastJobBatchStartTime = null;
  
  DateTime lastJobProcessedTime = null;
  
  DateTime oldestPendingEventTime = null;
  
  String publisher = null;
  
  int unprocessedEvents = null;
  EventBacklogStatus();

  @override
  String toString() {
    return 'EventBacklogStatus[captureTime=$captureTime, jobId=$jobId, lastEventBatchStartTime=$lastEventBatchStartTime, lastEventProcessedTime=$lastEventProcessedTime, lastJobBatchStartTime=$lastJobBatchStartTime, lastJobProcessedTime=$lastJobProcessedTime, oldestPendingEventTime=$oldestPendingEventTime, publisher=$publisher, unprocessedEvents=$unprocessedEvents, ]';
  }

  EventBacklogStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['captureTime'] == null) {
      captureTime = null;
    } else {
      captureTime = DateTime.parse(json['captureTime']);
    }
    if (json['jobId'] == null) {
      jobId = null;
    } else {
          jobId = json['jobId'];
    }
    if (json['lastEventBatchStartTime'] == null) {
      lastEventBatchStartTime = null;
    } else {
      lastEventBatchStartTime = DateTime.parse(json['lastEventBatchStartTime']);
    }
    if (json['lastEventProcessedTime'] == null) {
      lastEventProcessedTime = null;
    } else {
      lastEventProcessedTime = DateTime.parse(json['lastEventProcessedTime']);
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
    if (json['oldestPendingEventTime'] == null) {
      oldestPendingEventTime = null;
    } else {
      oldestPendingEventTime = DateTime.parse(json['oldestPendingEventTime']);
    }
    if (json['publisher'] == null) {
      publisher = null;
    } else {
          publisher = json['publisher'];
    }
    if (json['unprocessedEvents'] == null) {
      unprocessedEvents = null;
    } else {
          unprocessedEvents = json['unprocessedEvents'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (captureTime != null)
      json['captureTime'] = captureTime == null ? null : captureTime.toUtc().toIso8601String();
    if (jobId != null)
      json['jobId'] = jobId;
    if (lastEventBatchStartTime != null)
      json['lastEventBatchStartTime'] = lastEventBatchStartTime == null ? null : lastEventBatchStartTime.toUtc().toIso8601String();
    if (lastEventProcessedTime != null)
      json['lastEventProcessedTime'] = lastEventProcessedTime == null ? null : lastEventProcessedTime.toUtc().toIso8601String();
    if (lastJobBatchStartTime != null)
      json['lastJobBatchStartTime'] = lastJobBatchStartTime == null ? null : lastJobBatchStartTime.toUtc().toIso8601String();
    if (lastJobProcessedTime != null)
      json['lastJobProcessedTime'] = lastJobProcessedTime == null ? null : lastJobProcessedTime.toUtc().toIso8601String();
    if (oldestPendingEventTime != null)
      json['oldestPendingEventTime'] = oldestPendingEventTime == null ? null : oldestPendingEventTime.toUtc().toIso8601String();
    if (publisher != null)
      json['publisher'] = publisher;
    if (unprocessedEvents != null)
      json['unprocessedEvents'] = unprocessedEvents;
    return json;
  }

  static List<EventBacklogStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<EventBacklogStatus>() : json.map((value) => EventBacklogStatus.fromJson(value)).toList();
  }

  static Map<String, EventBacklogStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EventBacklogStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EventBacklogStatus.fromJson(value));
    }
    return map;
  }
}

