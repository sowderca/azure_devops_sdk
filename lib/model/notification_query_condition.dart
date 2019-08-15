part of azure_devops_sdk.api;

class NotificationQueryCondition {
  
  String eventInitiator = null;
  
  String eventType = null;
  
  String subscriber = null;
  
  String subscriptionId = null;
  NotificationQueryCondition();

  @override
  String toString() {
    return 'NotificationQueryCondition[eventInitiator=$eventInitiator, eventType=$eventType, subscriber=$subscriber, subscriptionId=$subscriptionId, ]';
  }

  NotificationQueryCondition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['eventInitiator'] == null) {
      eventInitiator = null;
    } else {
          eventInitiator = json['eventInitiator'];
    }
    if (json['eventType'] == null) {
      eventType = null;
    } else {
          eventType = json['eventType'];
    }
    if (json['subscriber'] == null) {
      subscriber = null;
    } else {
          subscriber = json['subscriber'];
    }
    if (json['subscriptionId'] == null) {
      subscriptionId = null;
    } else {
          subscriptionId = json['subscriptionId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (eventInitiator != null)
      json['eventInitiator'] = eventInitiator;
    if (eventType != null)
      json['eventType'] = eventType;
    if (subscriber != null)
      json['subscriber'] = subscriber;
    if (subscriptionId != null)
      json['subscriptionId'] = subscriptionId;
    return json;
  }

  static List<NotificationQueryCondition> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationQueryCondition>() : json.map((value) => NotificationQueryCondition.fromJson(value)).toList();
  }

  static Map<String, NotificationQueryCondition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationQueryCondition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationQueryCondition.fromJson(value));
    }
    return map;
  }
}

