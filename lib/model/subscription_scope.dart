part of azure_devops_sdk.api;

class SubscriptionScope {
  /* Required: This is the identity of the scope for the type. */
  String id = null;
  /* Optional: The display name of the scope */
  String name = null;
  /* Required: The event specific type of a scope. */
  String type = null;
  SubscriptionScope();

  @override
  String toString() {
    return 'SubscriptionScope[id=$id, name=$name, type=$type, ]';
  }

  SubscriptionScope.fromJson(Map<String, dynamic> json) {
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

  static List<SubscriptionScope> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionScope>() : json.map((value) => SubscriptionScope.fromJson(value)).toList();
  }

  static Map<String, SubscriptionScope> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionScope>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionScope.fromJson(value));
    }
    return map;
  }
}

