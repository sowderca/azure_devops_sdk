part of azure_devops_sdk.api;

class BatchNotificationOperation {
  
  String notificationOperation = null;
  //enum notificationOperationEnum {  none,  suspendUnprocessed,  };{
  
  List<NotificationQueryCondition> notificationQueryConditions = [];
  BatchNotificationOperation();

  @override
  String toString() {
    return 'BatchNotificationOperation[notificationOperation=$notificationOperation, notificationQueryConditions=$notificationQueryConditions, ]';
  }

  BatchNotificationOperation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['notificationOperation'] == null) {
      notificationOperation = null;
    } else {
          notificationOperation = json['notificationOperation'];
    }
    if (json['notificationQueryConditions'] == null) {
      notificationQueryConditions = null;
    } else {
      notificationQueryConditions = NotificationQueryCondition.listFromJson(json['notificationQueryConditions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (notificationOperation != null)
      json['notificationOperation'] = notificationOperation;
    if (notificationQueryConditions != null)
      json['notificationQueryConditions'] = notificationQueryConditions;
    return json;
  }

  static List<BatchNotificationOperation> listFromJson(List<dynamic> json) {
    return json == null ? List<BatchNotificationOperation>() : json.map((value) => BatchNotificationOperation.fromJson(value)).toList();
  }

  static Map<String, BatchNotificationOperation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BatchNotificationOperation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BatchNotificationOperation.fromJson(value));
    }
    return map;
  }
}

