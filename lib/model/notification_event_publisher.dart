part of azure_devops_sdk.api;

class NotificationEventPublisher {
  
  String id = null;
  
  SubscriptionManagement subscriptionManagementInfo = null;
  
  String url = null;
  NotificationEventPublisher();

  @override
  String toString() {
    return 'NotificationEventPublisher[id=$id, subscriptionManagementInfo=$subscriptionManagementInfo, url=$url, ]';
  }

  NotificationEventPublisher.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['subscriptionManagementInfo'] == null) {
      subscriptionManagementInfo = null;
    } else {
      subscriptionManagementInfo = SubscriptionManagement.fromJson(json['subscriptionManagementInfo']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (subscriptionManagementInfo != null)
      json['subscriptionManagementInfo'] = subscriptionManagementInfo;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<NotificationEventPublisher> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationEventPublisher>() : json.map((value) => NotificationEventPublisher.fromJson(value)).toList();
  }

  static Map<String, NotificationEventPublisher> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationEventPublisher>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationEventPublisher.fromJson(value));
    }
    return map;
  }
}

