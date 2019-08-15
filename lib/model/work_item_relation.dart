part of azure_devops_sdk.api;

class WorkItemRelation {
  /* Collection of link attributes. */
  Map<String, Object> attributes = {};
  /* Relation type. */
  String rel = null;
  /* Link url. */
  String url = null;
  WorkItemRelation();

  @override
  String toString() {
    return 'WorkItemRelation[attributes=$attributes, rel=$rel, url=$url, ]';
  }

  WorkItemRelation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attributes'] == null) {
      attributes = null;
    } else {
      attributes = Object.mapFromJson(json['attributes']);
    }
    if (json['rel'] == null) {
      rel = null;
    } else {
          rel = json['rel'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attributes != null)
      json['attributes'] = attributes;
    if (rel != null)
      json['rel'] = rel;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WorkItemRelation> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemRelation>() : json.map((value) => WorkItemRelation.fromJson(value)).toList();
  }

  static Map<String, WorkItemRelation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemRelation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemRelation.fromJson(value));
    }
    return map;
  }
}

