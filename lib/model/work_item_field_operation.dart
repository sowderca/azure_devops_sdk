part of azure_devops_sdk.api;

class WorkItemFieldOperation {
  /* Friendly name of the operation. */
  String name = null;
  /* Reference name of the operation. */
  String referenceName = null;
  WorkItemFieldOperation();

  @override
  String toString() {
    return 'WorkItemFieldOperation[name=$name, referenceName=$referenceName, ]';
  }

  WorkItemFieldOperation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['referenceName'] == null) {
      referenceName = null;
    } else {
          referenceName = json['referenceName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (referenceName != null)
      json['referenceName'] = referenceName;
    return json;
  }

  static List<WorkItemFieldOperation> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemFieldOperation>() : json.map((value) => WorkItemFieldOperation.fromJson(value)).toList();
  }

  static Map<String, WorkItemFieldOperation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemFieldOperation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemFieldOperation.fromJson(value));
    }
    return map;
  }
}

