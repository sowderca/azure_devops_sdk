part of azure_devops_sdk.api;

class WorkItemFieldUpdate {
  /* The new value of the field. */
  Object newValue = null;
  /* The old value of the field. */
  Object oldValue = null;
  WorkItemFieldUpdate();

  @override
  String toString() {
    return 'WorkItemFieldUpdate[newValue=$newValue, oldValue=$oldValue, ]';
  }

  WorkItemFieldUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['newValue'] == null) {
      newValue = null;
    } else {
          newValue = json['newValue'];
    }
    if (json['oldValue'] == null) {
      oldValue = null;
    } else {
          oldValue = json['oldValue'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (newValue != null)
      json['newValue'] = newValue;
    if (oldValue != null)
      json['oldValue'] = oldValue;
    return json;
  }

  static List<WorkItemFieldUpdate> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemFieldUpdate>() : json.map((value) => WorkItemFieldUpdate.fromJson(value)).toList();
  }

  static Map<String, WorkItemFieldUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemFieldUpdate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemFieldUpdate.fromJson(value));
    }
    return map;
  }
}

