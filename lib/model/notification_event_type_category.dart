part of azure_devops_sdk.api;

class NotificationEventTypeCategory {
  /* Gets or sets the unique identifier of this category. */
  String id = null;
  /* Gets or sets the friendly name of this category. */
  String name = null;
  NotificationEventTypeCategory();

  @override
  String toString() {
    return 'NotificationEventTypeCategory[id=$id, name=$name, ]';
  }

  NotificationEventTypeCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<NotificationEventTypeCategory> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationEventTypeCategory>() : json.map((value) => NotificationEventTypeCategory.fromJson(value)).toList();
  }

  static Map<String, NotificationEventTypeCategory> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationEventTypeCategory>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationEventTypeCategory.fromJson(value));
    }
    return map;
  }
}

