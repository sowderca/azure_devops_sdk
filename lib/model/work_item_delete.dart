part of azure_devops_sdk.api;

class WorkItemDelete {
  /* The HTTP status code for work item operation in a batch request. */
  int code = null;
  /* The user who deleted the work item type. */
  String deletedBy = null;
  /* The work item deletion date. */
  String deletedDate = null;
  /* Work item ID. */
  int id = null;
  /* The exception message for work item operation in a batch request. */
  String message = null;
  /* Name or title of the work item. */
  String name = null;
  /* Parent project of the deleted work item. */
  String project = null;
  /* Type of work item. */
  String type = null;
  /* REST API URL of the resource */
  String url = null;
  WorkItemDelete();

  @override
  String toString() {
    return 'WorkItemDelete[code=$code, deletedBy=$deletedBy, deletedDate=$deletedDate, id=$id, message=$message, name=$name, project=$project, type=$type, url=$url, ]';
  }

  WorkItemDelete.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['code'] == null) {
      code = null;
    } else {
          code = json['code'];
    }
    if (json['deletedBy'] == null) {
      deletedBy = null;
    } else {
          deletedBy = json['deletedBy'];
    }
    if (json['deletedDate'] == null) {
      deletedDate = null;
    } else {
          deletedDate = json['deletedDate'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
          project = json['project'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (code != null)
      json['code'] = code;
    if (deletedBy != null)
      json['deletedBy'] = deletedBy;
    if (deletedDate != null)
      json['deletedDate'] = deletedDate;
    if (id != null)
      json['id'] = id;
    if (message != null)
      json['message'] = message;
    if (name != null)
      json['name'] = name;
    if (project != null)
      json['project'] = project;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WorkItemDelete> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemDelete>() : json.map((value) => WorkItemDelete.fromJson(value)).toList();
  }

  static Map<String, WorkItemDelete> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemDelete>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemDelete.fromJson(value));
    }
    return map;
  }
}

