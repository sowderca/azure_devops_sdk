part of azure_devops_sdk.api;

class WorkItemLink {
  /* The type of link. */
  String rel = null;
  
  WorkItemReference source = null;
  
  WorkItemReference target = null;
  WorkItemLink();

  @override
  String toString() {
    return 'WorkItemLink[rel=$rel, source=$source, target=$target, ]';
  }

  WorkItemLink.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['rel'] == null) {
      rel = null;
    } else {
          rel = json['rel'];
    }
    if (json['source'] == null) {
      source = null;
    } else {
      source = WorkItemReference.fromJson(json['source']);
    }
    if (json['target'] == null) {
      target = null;
    } else {
      target = WorkItemReference.fromJson(json['target']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (rel != null)
      json['rel'] = rel;
    if (source != null)
      json['source'] = source;
    if (target != null)
      json['target'] = target;
    return json;
  }

  static List<WorkItemLink> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemLink>() : json.map((value) => WorkItemLink.fromJson(value)).toList();
  }

  static Map<String, WorkItemLink> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemLink>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemLink.fromJson(value));
    }
    return map;
  }
}

