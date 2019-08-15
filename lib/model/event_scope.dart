part of azure_devops_sdk.api;

class EventScope {
  /* Required: This is the identity of the scope for the type. */
  String id = null;
  /* Optional: The display name of the scope */
  String name = null;
  /* Required: The event specific type of a scope. */
  String type = null;
  EventScope();

  @override
  String toString() {
    return 'EventScope[id=$id, name=$name, type=$type, ]';
  }

  EventScope.fromJson(Map<String, dynamic> json) {
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
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<EventScope> listFromJson(List<dynamic> json) {
    return json == null ? List<EventScope>() : json.map((value) => EventScope.fromJson(value)).toList();
  }

  static Map<String, EventScope> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EventScope>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EventScope.fromJson(value));
    }
    return map;
  }
}

