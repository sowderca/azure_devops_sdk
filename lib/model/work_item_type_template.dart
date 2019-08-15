part of azure_devops_sdk.api;

class WorkItemTypeTemplate {
  /* XML template in string format. */
  String template = null;
  WorkItemTypeTemplate();

  @override
  String toString() {
    return 'WorkItemTypeTemplate[template=$template, ]';
  }

  WorkItemTypeTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['template'] == null) {
      template = null;
    } else {
          template = json['template'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (template != null)
      json['template'] = template;
    return json;
  }

  static List<WorkItemTypeTemplate> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTypeTemplate>() : json.map((value) => WorkItemTypeTemplate.fromJson(value)).toList();
  }

  static Map<String, WorkItemTypeTemplate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTypeTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTypeTemplate.fromJson(value));
    }
    return map;
  }
}

