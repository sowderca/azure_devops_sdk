part of azure_devops_sdk.api;

class ActionDefinition {
  /* The bit mask integer for this action. Must be a power of 2. */
  int bit = null;
  /* The localized display name for this action. */
  String displayName = null;
  /* The non-localized name for this action. */
  String name = null;
  /* The namespace that this action belongs to.  This will only be used for reading from the database. */
  String namespaceId = null;
  ActionDefinition();

  @override
  String toString() {
    return 'ActionDefinition[bit=$bit, displayName=$displayName, name=$name, namespaceId=$namespaceId, ]';
  }

  ActionDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['bit'] == null) {
      bit = null;
    } else {
          bit = json['bit'];
    }
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['namespaceId'] == null) {
      namespaceId = null;
    } else {
          namespaceId = json['namespaceId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (bit != null)
      json['bit'] = bit;
    if (displayName != null)
      json['displayName'] = displayName;
    if (name != null)
      json['name'] = name;
    if (namespaceId != null)
      json['namespaceId'] = namespaceId;
    return json;
  }

  static List<ActionDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<ActionDefinition>() : json.map((value) => ActionDefinition.fromJson(value)).toList();
  }

  static Map<String, ActionDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ActionDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ActionDefinition.fromJson(value));
    }
    return map;
  }
}

