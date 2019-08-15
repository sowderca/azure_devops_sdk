part of azure_devops_sdk.api;

class TaskGroupDefinition {
  
  String displayName = null;
  
  bool isExpanded = null;
  
  String name = null;
  
  List<String> tags = [];
  
  String visibleRule = null;
  TaskGroupDefinition();

  @override
  String toString() {
    return 'TaskGroupDefinition[displayName=$displayName, isExpanded=$isExpanded, name=$name, tags=$tags, visibleRule=$visibleRule, ]';
  }

  TaskGroupDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['isExpanded'] == null) {
      isExpanded = null;
    } else {
          isExpanded = json['isExpanded'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['tags'] == null) {
      tags = null;
    } else {
      tags = (json['tags'] as List).cast<String>();
    }
    if (json['visibleRule'] == null) {
      visibleRule = null;
    } else {
          visibleRule = json['visibleRule'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (isExpanded != null)
      json['isExpanded'] = isExpanded;
    if (name != null)
      json['name'] = name;
    if (tags != null)
      json['tags'] = tags;
    if (visibleRule != null)
      json['visibleRule'] = visibleRule;
    return json;
  }

  static List<TaskGroupDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskGroupDefinition>() : json.map((value) => TaskGroupDefinition.fromJson(value)).toList();
  }

  static Map<String, TaskGroupDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskGroupDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskGroupDefinition.fromJson(value));
    }
    return map;
  }
}

