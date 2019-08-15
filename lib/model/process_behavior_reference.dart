part of azure_devops_sdk.api;

class ProcessBehaviorReference {
  /* Id of a Behavior. */
  String behaviorRefName = null;
  /* Url to behavior. */
  String url = null;
  ProcessBehaviorReference();

  @override
  String toString() {
    return 'ProcessBehaviorReference[behaviorRefName=$behaviorRefName, url=$url, ]';
  }

  ProcessBehaviorReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['behaviorRefName'] == null) {
      behaviorRefName = null;
    } else {
          behaviorRefName = json['behaviorRefName'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (behaviorRefName != null)
      json['behaviorRefName'] = behaviorRefName;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ProcessBehaviorReference> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessBehaviorReference>() : json.map((value) => ProcessBehaviorReference.fromJson(value)).toList();
  }

  static Map<String, ProcessBehaviorReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessBehaviorReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessBehaviorReference.fromJson(value));
    }
    return map;
  }
}

