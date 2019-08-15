part of azure_devops_sdk.api;

class TaskInputDefinitionBase {
  
  List<String> aliases = [];
  
  String defaultValue = null;
  
  String groupName = null;
  
  String helpMarkDown = null;
  
  String label = null;
  
  String name = null;
  
  Map<String, String> options = {};
  
  Map<String, String> properties = {};
  
  bool required = null;
  
  String type = null;
  
  TaskInputValidation validation = null;
  
  String visibleRule = null;
  TaskInputDefinitionBase();

  @override
  String toString() {
    return 'TaskInputDefinitionBase[aliases=$aliases, defaultValue=$defaultValue, groupName=$groupName, helpMarkDown=$helpMarkDown, label=$label, name=$name, options=$options, properties=$properties, required=$required, type=$type, validation=$validation, visibleRule=$visibleRule, ]';
  }

  TaskInputDefinitionBase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['aliases'] == null) {
      aliases = null;
    } else {
      aliases = (json['aliases'] as List).cast<String>();
    }
    if (json['defaultValue'] == null) {
      defaultValue = null;
    } else {
          defaultValue = json['defaultValue'];
    }
    if (json['groupName'] == null) {
      groupName = null;
    } else {
          groupName = json['groupName'];
    }
    if (json['helpMarkDown'] == null) {
      helpMarkDown = null;
    } else {
          helpMarkDown = json['helpMarkDown'];
    }
    if (json['label'] == null) {
      label = null;
    } else {
          label = json['label'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['options'] == null) {
      options = null;
    } else {
          options = (json['options'] as Map).cast<String, String>();
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
          properties = (json['properties'] as Map).cast<String, String>();
    }
    if (json['required'] == null) {
      required = null;
    } else {
          required = json['required'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['validation'] == null) {
      validation = null;
    } else {
      validation = TaskInputValidation.fromJson(json['validation']);
    }
    if (json['visibleRule'] == null) {
      visibleRule = null;
    } else {
          visibleRule = json['visibleRule'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (aliases != null)
      json['aliases'] = aliases;
    if (defaultValue != null)
      json['defaultValue'] = defaultValue;
    if (groupName != null)
      json['groupName'] = groupName;
    if (helpMarkDown != null)
      json['helpMarkDown'] = helpMarkDown;
    if (label != null)
      json['label'] = label;
    if (name != null)
      json['name'] = name;
    if (options != null)
      json['options'] = options;
    if (properties != null)
      json['properties'] = properties;
    if (required != null)
      json['required'] = required;
    if (type != null)
      json['type'] = type;
    if (validation != null)
      json['validation'] = validation;
    if (visibleRule != null)
      json['visibleRule'] = visibleRule;
    return json;
  }

  static List<TaskInputDefinitionBase> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskInputDefinitionBase>() : json.map((value) => TaskInputDefinitionBase.fromJson(value)).toList();
  }

  static Map<String, TaskInputDefinitionBase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskInputDefinitionBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskInputDefinitionBase.fromJson(value));
    }
    return map;
  }
}

