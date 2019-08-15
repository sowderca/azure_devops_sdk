part of azure_devops_sdk.api;

class TaskOrchestrationItem {
  
  String itemType = null;
  //enum itemTypeEnum {  container,  job,  };{
  TaskOrchestrationItem();

  @override
  String toString() {
    return 'TaskOrchestrationItem[itemType=$itemType, ]';
  }

  TaskOrchestrationItem.fromJson(Map<String, dynamic> json) {
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

  static List<TaskOrchestrationItem> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskOrchestrationItem>() : json.map((value) => TaskOrchestrationItem.fromJson(value)).toList();
  }

  static Map<String, TaskOrchestrationItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskOrchestrationItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskOrchestrationItem.fromJson(value));
    }
    return map;
  }
}

