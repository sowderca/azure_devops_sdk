part of azure_devops_sdk.api;

class TaskAgentQueue {
  /* ID of the queue */
  int id = null;
  /* Name of the queue */
  String name = null;
  
  TaskAgentPoolReference pool = null;
  /* Project ID */
  String projectId = null;
  TaskAgentQueue();

  @override
  String toString() {
    return 'TaskAgentQueue[id=$id, name=$name, pool=$pool, projectId=$projectId, ]';
  }

  TaskAgentQueue.fromJson(Map<String, dynamic> json) {
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
    if (json['pool'] == null) {
      pool = null;
    } else {
      pool = TaskAgentPoolReference.fromJson(json['pool']);
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (pool != null)
      json['pool'] = pool;
    if (projectId != null)
      json['projectId'] = projectId;
    return json;
  }

  static List<TaskAgentQueue> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentQueue>() : json.map((value) => TaskAgentQueue.fromJson(value)).toList();
  }

  static Map<String, TaskAgentQueue> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentQueue>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentQueue.fromJson(value));
    }
    return map;
  }
}

