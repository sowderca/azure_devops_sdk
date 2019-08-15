part of azure_devops_sdk.api;

class NotificationStatisticsQuery {
  
  List<NotificationStatisticsQueryConditions> conditions = [];
  NotificationStatisticsQuery();

  @override
  String toString() {
    return 'NotificationStatisticsQuery[conditions=$conditions, ]';
  }

  NotificationStatisticsQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['conditions'] == null) {
      conditions = null;
    } else {
      conditions = NotificationStatisticsQueryConditions.listFromJson(json['conditions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (conditions != null)
      json['conditions'] = conditions;
    return json;
  }

  static List<NotificationStatisticsQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationStatisticsQuery>() : json.map((value) => NotificationStatisticsQuery.fromJson(value)).toList();
  }

  static Map<String, NotificationStatisticsQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationStatisticsQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationStatisticsQuery.fromJson(value));
    }
    return map;
  }
}

