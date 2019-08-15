part of azure_devops_sdk.api;

class WorkItemDeleteUpdate {
  /* Sets a value indicating whether this work item is deleted. */
  bool isDeleted = null;
  WorkItemDeleteUpdate();

  @override
  String toString() {
    return 'WorkItemDeleteUpdate[isDeleted=$isDeleted, ]';
  }

  WorkItemDeleteUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isDeleted'] == null) {
      isDeleted = null;
    } else {
          isDeleted = json['isDeleted'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isDeleted != null)
      json['isDeleted'] = isDeleted;
    return json;
  }

  static List<WorkItemDeleteUpdate> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemDeleteUpdate>() : json.map((value) => WorkItemDeleteUpdate.fromJson(value)).toList();
  }

  static Map<String, WorkItemDeleteUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemDeleteUpdate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemDeleteUpdate.fromJson(value));
    }
    return map;
  }
}

