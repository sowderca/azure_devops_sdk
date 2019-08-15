part of azure_devops_sdk.api;

class WorkItemDetails {
  /* Work Item Id */
  int id = null;
  /* Work Item Name */
  String name = null;
  /* Work Item Fields */
  List<Object> workItemFields = [];
  WorkItemDetails();

  @override
  String toString() {
    return 'WorkItemDetails[id=$id, name=$name, workItemFields=$workItemFields, ]';
  }

  WorkItemDetails.fromJson(Map<String, dynamic> json) {
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
    if (json['workItemFields'] == null) {
      workItemFields = null;
    } else {
      workItemFields = Object.listFromJson(json['workItemFields']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (workItemFields != null)
      json['workItemFields'] = workItemFields;
    return json;
  }

  static List<WorkItemDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemDetails>() : json.map((value) => WorkItemDetails.fromJson(value)).toList();
  }

  static Map<String, WorkItemDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemDetails.fromJson(value));
    }
    return map;
  }
}

