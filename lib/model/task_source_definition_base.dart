part of azure_devops_sdk.api;

class TaskSourceDefinitionBase {
  
  String authKey = null;
  
  String endpoint = null;
  
  String keySelector = null;
  
  String selector = null;
  
  String target = null;
  TaskSourceDefinitionBase();

  @override
  String toString() {
    return 'TaskSourceDefinitionBase[authKey=$authKey, endpoint=$endpoint, keySelector=$keySelector, selector=$selector, target=$target, ]';
  }

  TaskSourceDefinitionBase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['authKey'] == null) {
      authKey = null;
    } else {
          authKey = json['authKey'];
    }
    if (json['endpoint'] == null) {
      endpoint = null;
    } else {
          endpoint = json['endpoint'];
    }
    if (json['keySelector'] == null) {
      keySelector = null;
    } else {
          keySelector = json['keySelector'];
    }
    if (json['selector'] == null) {
      selector = null;
    } else {
          selector = json['selector'];
    }
    if (json['target'] == null) {
      target = null;
    } else {
          target = json['target'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (authKey != null)
      json['authKey'] = authKey;
    if (endpoint != null)
      json['endpoint'] = endpoint;
    if (keySelector != null)
      json['keySelector'] = keySelector;
    if (selector != null)
      json['selector'] = selector;
    if (target != null)
      json['target'] = target;
    return json;
  }

  static List<TaskSourceDefinitionBase> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskSourceDefinitionBase>() : json.map((value) => TaskSourceDefinitionBase.fromJson(value)).toList();
  }

  static Map<String, TaskSourceDefinitionBase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskSourceDefinitionBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskSourceDefinitionBase.fromJson(value));
    }
    return map;
  }
}

