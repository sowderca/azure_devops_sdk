part of azure_devops_sdk.api;

class WorkItemField {
  
  String url = null;
  WorkItemField();

  @override
  String toString() {
    return 'WorkItemField[url=$url, ]';
  }

  WorkItemField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WorkItemField> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemField>() : json.map((value) => WorkItemField.fromJson(value)).toList();
  }

  static Map<String, WorkItemField> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemField>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemField.fromJson(value));
    }
    return map;
  }
}

