part of azure_devops_sdk.api;

class BacklogLevelWorkItems {
  /* A list of work items within a backlog level */
  List<WorkItemLink> workItems = [];
  BacklogLevelWorkItems();

  @override
  String toString() {
    return 'BacklogLevelWorkItems[workItems=$workItems, ]';
  }

  BacklogLevelWorkItems.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['workItems'] == null) {
      workItems = null;
    } else {
      workItems = WorkItemLink.listFromJson(json['workItems']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (workItems != null)
      json['workItems'] = workItems;
    return json;
  }

  static List<BacklogLevelWorkItems> listFromJson(List<dynamic> json) {
    return json == null ? List<BacklogLevelWorkItems>() : json.map((value) => BacklogLevelWorkItems.fromJson(value)).toList();
  }

  static Map<String, BacklogLevelWorkItems> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BacklogLevelWorkItems>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BacklogLevelWorkItems.fromJson(value));
    }
    return map;
  }
}

