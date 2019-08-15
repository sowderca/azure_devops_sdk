part of azure_devops_sdk.api;

class WorkItemResult {
  /* A standard set of work item fields and their values. */
  Map<String, String> fields = {};
  /* Highlighted snippets of fields that match the search request. The list is sorted by relevance of the snippets. */
  List<WorkItemHit> hits = [];
  
  Project project = null;
  /* Reference to the work item. */
  String url = null;
  WorkItemResult();

  @override
  String toString() {
    return 'WorkItemResult[fields=$fields, hits=$hits, project=$project, url=$url, ]';
  }

  WorkItemResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['fields'] == null) {
      fields = null;
    } else {
          fields = (json['fields'] as Map).cast<String, String>();
    }
    if (json['hits'] == null) {
      hits = null;
    } else {
      hits = WorkItemHit.listFromJson(json['hits']);
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = Project.fromJson(json['project']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fields != null)
      json['fields'] = fields;
    if (hits != null)
      json['hits'] = hits;
    if (project != null)
      json['project'] = project;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WorkItemResult> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemResult>() : json.map((value) => WorkItemResult.fromJson(value)).toList();
  }

  static Map<String, WorkItemResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemResult.fromJson(value));
    }
    return map;
  }
}

