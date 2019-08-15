part of azure_devops_sdk.api;

class NotificationEventFieldOperator {
  /* Gets or sets the display name of an operator */
  String displayName = null;
  /* Gets or sets the id of an operator */
  String id = null;
  NotificationEventFieldOperator();

  @override
  String toString() {
    return 'NotificationEventFieldOperator[displayName=$displayName, id=$id, ]';
  }

  NotificationEventFieldOperator.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<NotificationEventFieldOperator> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationEventFieldOperator>() : json.map((value) => NotificationEventFieldOperator.fromJson(value)).toList();
  }

  static Map<String, NotificationEventFieldOperator> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationEventFieldOperator>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationEventFieldOperator.fromJson(value));
    }
    return map;
  }
}

