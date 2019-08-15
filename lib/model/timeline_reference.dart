part of azure_devops_sdk.api;

class TimelineReference {
  /* The change ID. */
  int changeId = null;
  /* The ID of the timeline. */
  String id = null;
  /* The REST URL of the timeline. */
  String url = null;
  TimelineReference();

  @override
  String toString() {
    return 'TimelineReference[changeId=$changeId, id=$id, url=$url, ]';
  }

  TimelineReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['changeId'] == null) {
      changeId = null;
    } else {
          changeId = json['changeId'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changeId != null)
      json['changeId'] = changeId;
    if (id != null)
      json['id'] = id;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TimelineReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TimelineReference>() : json.map((value) => TimelineReference.fromJson(value)).toList();
  }

  static Map<String, TimelineReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimelineReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimelineReference.fromJson(value));
    }
    return map;
  }
}

