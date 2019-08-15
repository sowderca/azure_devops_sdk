part of azure_devops_sdk.api;

class Timeline {
  /* The change ID. */
  int changeId = null;
  /* The ID of the timeline. */
  String id = null;
  /* The REST URL of the timeline. */
  String url = null;
  Timeline();

  @override
  String toString() {
    return 'Timeline[changeId=$changeId, id=$id, url=$url, ]';
  }

  Timeline.fromJson(Map<String, dynamic> json) {
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

  static List<Timeline> listFromJson(List<dynamic> json) {
    return json == null ? List<Timeline>() : json.map((value) => Timeline.fromJson(value)).toList();
  }

  static Map<String, Timeline> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Timeline>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Timeline.fromJson(value));
    }
    return map;
  }
}

