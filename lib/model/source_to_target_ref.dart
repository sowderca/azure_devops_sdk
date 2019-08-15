part of azure_devops_sdk.api;

class SourceToTargetRef {
  /* The source ref to copy. For example, refs/heads/master. */
  String sourceRef = null;
  /* The target ref to update. For example, refs/heads/master. */
  String targetRef = null;
  SourceToTargetRef();

  @override
  String toString() {
    return 'SourceToTargetRef[sourceRef=$sourceRef, targetRef=$targetRef, ]';
  }

  SourceToTargetRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['sourceRef'] == null) {
      sourceRef = null;
    } else {
          sourceRef = json['sourceRef'];
    }
    if (json['targetRef'] == null) {
      targetRef = null;
    } else {
          targetRef = json['targetRef'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (sourceRef != null)
      json['sourceRef'] = sourceRef;
    if (targetRef != null)
      json['targetRef'] = targetRef;
    return json;
  }

  static List<SourceToTargetRef> listFromJson(List<dynamic> json) {
    return json == null ? List<SourceToTargetRef>() : json.map((value) => SourceToTargetRef.fromJson(value)).toList();
  }

  static Map<String, SourceToTargetRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SourceToTargetRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SourceToTargetRef.fromJson(value));
    }
    return map;
  }
}

