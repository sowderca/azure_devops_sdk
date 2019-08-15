part of azure_devops_sdk.api;

class EnvironmentTriggerContent {
  /* Gets or sets action. */
  String action = null;
  /* Gets or sets list of event types. */
  List<String> eventTypes = [];
  EnvironmentTriggerContent();

  @override
  String toString() {
    return 'EnvironmentTriggerContent[action=$action, eventTypes=$eventTypes, ]';
  }

  EnvironmentTriggerContent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['action'] == null) {
      action = null;
    } else {
          action = json['action'];
    }
    if (json['eventTypes'] == null) {
      eventTypes = null;
    } else {
      eventTypes = (json['eventTypes'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (action != null)
      json['action'] = action;
    if (eventTypes != null)
      json['eventTypes'] = eventTypes;
    return json;
  }

  static List<EnvironmentTriggerContent> listFromJson(List<dynamic> json) {
    return json == null ? List<EnvironmentTriggerContent>() : json.map((value) => EnvironmentTriggerContent.fromJson(value)).toList();
  }

  static Map<String, EnvironmentTriggerContent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EnvironmentTriggerContent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EnvironmentTriggerContent.fromJson(value));
    }
    return map;
  }
}

