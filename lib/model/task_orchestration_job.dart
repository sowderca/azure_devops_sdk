part of azure_devops_sdk.api;

class TaskOrchestrationJob {
  
  String itemType = null;
  //enum itemTypeEnum {  container,  job,  };{
  TaskOrchestrationJob();

  @override
  String toString() {
    return 'TaskOrchestrationJob[itemType=$itemType, ]';
  }

  TaskOrchestrationJob.fromJson(Map<String, dynamic> json) {
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

  static List<TaskOrchestrationJob> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskOrchestrationJob>() : json.map((value) => TaskOrchestrationJob.fromJson(value)).toList();
  }

  static Map<String, TaskOrchestrationJob> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskOrchestrationJob>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskOrchestrationJob.fromJson(value));
    }
    return map;
  }
}

