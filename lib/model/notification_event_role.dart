part of azure_devops_sdk.api;

class NotificationEventRole {
  /* Gets or sets an Id for that role, this id is used by the event. */
  String id = null;
  /* Gets or sets the Name for that role, this name is used for UI display. */
  String name = null;
  /* Gets or sets whether this role can be a group or just an individual user */
  bool supportsGroups = null;
  NotificationEventRole();

  @override
  String toString() {
    return 'NotificationEventRole[id=$id, name=$name, supportsGroups=$supportsGroups, ]';
  }

  NotificationEventRole.fromJson(Map<String, dynamic> json) {
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
    if (json['supportsGroups'] == null) {
      supportsGroups = null;
    } else {
          supportsGroups = json['supportsGroups'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (supportsGroups != null)
      json['supportsGroups'] = supportsGroups;
    return json;
  }

  static List<NotificationEventRole> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationEventRole>() : json.map((value) => NotificationEventRole.fromJson(value)).toList();
  }

  static Map<String, NotificationEventRole> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationEventRole>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationEventRole.fromJson(value));
    }
    return map;
  }
}

