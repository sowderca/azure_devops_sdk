part of azure_devops_sdk.api;

class WorkItemFieldReference {
  /* The friendly name of the field. */
  String name = null;
  /* The reference name of the field. */
  String referenceName = null;
  /* The REST URL of the resource. */
  String url = null;
  WorkItemFieldReference();

  @override
  String toString() {
    return 'WorkItemFieldReference[name=$name, referenceName=$referenceName, url=$url, ]';
  }

  WorkItemFieldReference.fromJson(Map<String, dynamic> json) {
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

  static List<WorkItemFieldReference> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemFieldReference>() : json.map((value) => WorkItemFieldReference.fromJson(value)).toList();
  }

  static Map<String, WorkItemFieldReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemFieldReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemFieldReference.fromJson(value));
    }
    return map;
  }
}

