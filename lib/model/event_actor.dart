part of azure_devops_sdk.api;

class EventActor {
  /* Required: This is the identity of the user for the specified role. */
  String id = null;
  /* Required: The event specific name of a role. */
  String role = null;
  EventActor();

  @override
  String toString() {
    return 'EventActor[id=$id, role=$role, ]';
  }

  EventActor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['role'] == null) {
      role = null;
    } else {
          role = json['role'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (role != null)
      json['role'] = role;
    return json;
  }

  static List<EventActor> listFromJson(List<dynamic> json) {
    return json == null ? List<EventActor>() : json.map((value) => EventActor.fromJson(value)).toList();
  }

  static Map<String, EventActor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EventActor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EventActor.fromJson(value));
    }
    return map;
  }
}

