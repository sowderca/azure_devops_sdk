part of azure_devops_sdk.api;

class WorkItemTypeFieldInstance {
  /* The friendly name of the field. */
  String name = null;
  /* The reference name of the field. */
  String referenceName = null;
  /* The REST URL of the resource. */
  String url = null;
  WorkItemTypeFieldInstance();

  @override
  String toString() {
    return 'WorkItemTypeFieldInstance[name=$name, referenceName=$referenceName, url=$url, ]';
  }

  WorkItemTypeFieldInstance.fromJson(Map<String, dynamic> json) {
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
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (referenceName != null)
      json['referenceName'] = referenceName;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WorkItemTypeFieldInstance> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTypeFieldInstance>() : json.map((value) => WorkItemTypeFieldInstance.fromJson(value)).toList();
  }

  static Map<String, WorkItemTypeFieldInstance> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTypeFieldInstance>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTypeFieldInstance.fromJson(value));
    }
    return map;
  }
}

