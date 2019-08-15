part of azure_devops_sdk.api;

class TaskOrchestrationContainer {
  
  String itemType = null;
  //enum itemTypeEnum {  container,  job,  };{
  TaskOrchestrationContainer();

  @override
  String toString() {
    return 'TaskOrchestrationContainer[itemType=$itemType, ]';
  }

  TaskOrchestrationContainer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['itemType'] == null) {
      itemType = null;
    } else {
          itemType = json['itemType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (itemType != null)
      json['itemType'] = itemType;
    return json;
  }

  static List<TaskOrchestrationContainer> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskOrchestrationContainer>() : json.map((value) => TaskOrchestrationContainer.fromJson(value)).toList();
  }

  static Map<String, TaskOrchestrationContainer> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskOrchestrationContainer>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskOrchestrationContainer.fromJson(value));
    }
    return map;
  }
}

