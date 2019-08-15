part of azure_devops_sdk.api;

class WorkItemHit {
  /* Reference name of the highlighted field. */
  String fieldReferenceName = null;
  /* Matched/highlighted snippets of the field. */
  List<String> highlights = [];
  WorkItemHit();

  @override
  String toString() {
    return 'WorkItemHit[fieldReferenceName=$fieldReferenceName, highlights=$highlights, ]';
  }

  WorkItemHit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['fieldReferenceName'] == null) {
      fieldReferenceName = null;
    } else {
          fieldReferenceName = json['fieldReferenceName'];
    }
    if (json['highlights'] == null) {
      highlights = null;
    } else {
      highlights = (json['highlights'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fieldReferenceName != null)
      json['fieldReferenceName'] = fieldReferenceName;
    if (highlights != null)
      json['highlights'] = highlights;
    return json;
  }

  static List<WorkItemHit> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemHit>() : json.map((value) => WorkItemHit.fromJson(value)).toList();
  }

  static Map<String, WorkItemHit> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemHit>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemHit.fromJson(value));
    }
    return map;
  }
}

