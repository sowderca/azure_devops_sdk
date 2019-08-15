part of azure_devops_sdk.api;

class EventBatch {
  
  String endTime = null;
  
  Map<String, int> eventCounts = {};
  
  String eventIds = null;
  
  Map<String, int> notificationCounts = {};
  
  String preProcessEndTime = null;
  
  String preProcessStartTime = null;
  
  String processEndTime = null;
  
  String processStartTime = null;
  
  String startTime = null;
  
  Map<String, int> subscriptionCounts = {};
  EventBatch();

  @override
  String toString() {
    return 'EventBatch[endTime=$endTime, eventCounts=$eventCounts, eventIds=$eventIds, notificationCounts=$notificationCounts, preProcessEndTime=$preProcessEndTime, preProcessStartTime=$preProcessStartTime, processEndTime=$processEndTime, processStartTime=$processStartTime, startTime=$startTime, subscriptionCounts=$subscriptionCounts, ]';
  }

  EventBatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['endTime'] == null) {
      endTime = null;
    } else {
          endTime = json['endTime'];
    }
    if (json['eventCounts'] == null) {
      eventCounts = null;
    } else {
          eventCounts = (json['eventCounts'] as Map).cast<String, int>();
    }
    if (json['eventIds'] == null) {
      eventIds = null;
    } else {
          eventIds = json['eventIds'];
    }
    if (json['notificationCounts'] == null) {
      notificationCounts = null;
    } else {
          notificationCounts = (json['notificationCounts'] as Map).cast<String, int>();
    }
    if (json['preProcessEndTime'] == null) {
      preProcessEndTime = null;
    } else {
          preProcessEndTime = json['preProcessEndTime'];
    }
    if (json['preProcessStartTime'] == null) {
      preProcessStartTime = null;
    } else {
          preProcessStartTime = json['preProcessStartTime'];
    }
    if (json['processEndTime'] == null) {
      processEndTime = null;
    } else {
          processEndTime = json['processEndTime'];
    }
    if (json['processStartTime'] == null) {
      processStartTime = null;
    } else {
          processStartTime = json['processStartTime'];
    }
    if (json['startTime'] == null) {
      startTime = null;
    } else {
          startTime = json['startTime'];
    }
    if (json['subscriptionCounts'] == null) {
      subscriptionCounts = null;
    } else {
          subscriptionCounts = (json['subscriptionCounts'] as Map).cast<String, int>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (endTime != null)
      json['endTime'] = endTime;
    if (eventCounts != null)
      json['eventCounts'] = eventCounts;
    if (eventIds != null)
      json['eventIds'] = eventIds;
    if (notificationCounts != null)
      json['notificationCounts'] = notificationCounts;
    if (preProcessEndTime != null)
      json['preProcessEndTime'] = preProcessEndTime;
    if (preProcessStartTime != null)
      json['preProcessStartTime'] = preProcessStartTime;
    if (processEndTime != null)
      json['processEndTime'] = processEndTime;
    if (processStartTime != null)
      json['processStartTime'] = processStartTime;
    if (startTime != null)
      json['startTime'] = startTime;
    if (subscriptionCounts != null)
      json['subscriptionCounts'] = subscriptionCounts;
    return json;
  }

  static List<EventBatch> listFromJson(List<dynamic> json) {
    return json == null ? List<EventBatch>() : json.map((value) => EventBatch.fromJson(value)).toList();
  }

  static Map<String, EventBatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EventBatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EventBatch.fromJson(value));
    }
    return map;
  }
}

