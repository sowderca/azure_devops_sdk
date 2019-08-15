part of azure_devops_sdk.api;

class NotificationResultsSummaryDetail {
  /* Count of notification sent out with a matching result. */
  int notificationCount = null;
  /* Result of the notification */
  String result = null;
  //enum resultEnum {  pending,  succeeded,  failed,  filtered,  };{
  NotificationResultsSummaryDetail();

  @override
  String toString() {
    return 'NotificationResultsSummaryDetail[notificationCount=$notificationCount, result=$result, ]';
  }

  NotificationResultsSummaryDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['notificationCount'] == null) {
      notificationCount = null;
    } else {
          notificationCount = json['notificationCount'];
    }
    if (json['result'] == null) {
      result = null;
    } else {
          result = json['result'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (notificationCount != null)
      json['notificationCount'] = notificationCount;
    if (result != null)
      json['result'] = result;
    return json;
  }

  static List<NotificationResultsSummaryDetail> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationResultsSummaryDetail>() : json.map((value) => NotificationResultsSummaryDetail.fromJson(value)).toList();
  }

  static Map<String, NotificationResultsSummaryDetail> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationResultsSummaryDetail>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationResultsSummaryDetail.fromJson(value));
    }
    return map;
  }
}

