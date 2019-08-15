part of azure_devops_sdk.api;

class Notification {
  /* Gets or sets date and time that this result was created. */
  DateTime createdDate = null;
  
  NotificationDetails details = null;
  /* The event id associated with this notification */
  String eventId = null;
  /* The notification id */
  int id = null;
  /* Gets or sets date and time that this result was last modified. */
  DateTime modifiedDate = null;
  /* Result of the notification */
  String result = null;
  //enum resultEnum {  pending,  succeeded,  failed,  filtered,  };{
  /* Status of the notification */
  String status = null;
  //enum statusEnum {  queued,  processing,  requestInProgress,  completed,  };{
  /* The subscriber Id  associated with this notification. This is the last identity who touched in the subscription. In case of test notifications it can be the tester if the subscription is not created yet. */
  String subscriberId = null;
  /* The subscription id associated with this notification */
  String subscriptionId = null;
  Notification();

  @override
  String toString() {
    return 'Notification[createdDate=$createdDate, details=$details, eventId=$eventId, id=$id, modifiedDate=$modifiedDate, result=$result, status=$status, subscriberId=$subscriberId, subscriptionId=$subscriptionId, ]';
  }

  Notification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
    }
    if (json['details'] == null) {
      details = null;
    } else {
      details = NotificationDetails.fromJson(json['details']);
    }
    if (json['eventId'] == null) {
      eventId = null;
    } else {
          eventId = json['eventId'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['modifiedDate'] == null) {
      modifiedDate = null;
    } else {
      modifiedDate = DateTime.parse(json['modifiedDate']);
    }
    if (json['result'] == null) {
      result = null;
    } else {
          result = json['result'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['subscriberId'] == null) {
      subscriberId = null;
    } else {
          subscriberId = json['subscriberId'];
    }
    if (json['subscriptionId'] == null) {
      subscriptionId = null;
    } else {
          subscriptionId = json['subscriptionId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (details != null)
      json['details'] = details;
    if (eventId != null)
      json['eventId'] = eventId;
    if (id != null)
      json['id'] = id;
    if (modifiedDate != null)
      json['modifiedDate'] = modifiedDate == null ? null : modifiedDate.toUtc().toIso8601String();
    if (result != null)
      json['result'] = result;
    if (status != null)
      json['status'] = status;
    if (subscriberId != null)
      json['subscriberId'] = subscriberId;
    if (subscriptionId != null)
      json['subscriptionId'] = subscriptionId;
    return json;
  }

  static List<Notification> listFromJson(List<dynamic> json) {
    return json == null ? List<Notification>() : json.map((value) => Notification.fromJson(value)).toList();
  }

  static Map<String, Notification> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Notification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Notification.fromJson(value));
    }
    return map;
  }
}

