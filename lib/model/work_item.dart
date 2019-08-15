part of azure_devops_sdk.api;

class WorkItem {
  /* Id of the Work Item */
  int id = null;
  WorkItem();

  @override
  String toString() {
    return 'WorkItem[id=$id, ]';
  }

  WorkItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<WorkItem> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItem>() : json.map((value) => WorkItem.fromJson(value)).toList();
  }

  static Map<String, WorkItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItem.fromJson(value));
    }
    return map;
  }
}

