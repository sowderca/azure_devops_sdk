part of azure_devops_sdk.api;

class WorkItemRelationUpdates {
  /* List of newly added relations. */
  List<WorkItemRelation> added = [];
  /* List of removed relations. */
  List<WorkItemRelation> removed = [];
  /* List of updated relations. */
  List<WorkItemRelation> updated = [];
  WorkItemRelationUpdates();

  @override
  String toString() {
    return 'WorkItemRelationUpdates[added=$added, removed=$removed, updated=$updated, ]';
  }

  WorkItemRelationUpdates.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['added'] == null) {
      added = null;
    } else {
      added = WorkItemRelation.listFromJson(json['added']);
    }
    if (json['removed'] == null) {
      removed = null;
    } else {
      removed = WorkItemRelation.listFromJson(json['removed']);
    }
    if (json['updated'] == null) {
      updated = null;
    } else {
      updated = WorkItemRelation.listFromJson(json['updated']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (added != null)
      json['added'] = added;
    if (removed != null)
      json['removed'] = removed;
    if (updated != null)
      json['updated'] = updated;
    return json;
  }

  static List<WorkItemRelationUpdates> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemRelationUpdates>() : json.map((value) => WorkItemRelationUpdates.fromJson(value)).toList();
  }

  static Map<String, WorkItemRelationUpdates> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemRelationUpdates>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemRelationUpdates.fromJson(value));
    }
    return map;
  }
}

