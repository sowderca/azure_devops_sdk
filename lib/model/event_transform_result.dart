part of azure_devops_sdk.api;

class EventTransformResult {
  /* Transformed html content. */
  String content = null;
  /* Calculated data. */
  Object data = null;
  /* Calculated system inputs. */
  Map<String, String> systemInputs = {};
  EventTransformResult();

  @override
  String toString() {
    return 'EventTransformResult[content=$content, data=$data, systemInputs=$systemInputs, ]';
  }

  EventTransformResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['content'] == null) {
      content = null;
    } else {
          content = json['content'];
    }
    if (json['data'] == null) {
      data = null;
    } else {
          data = json['data'];
    }
    if (json['systemInputs'] == null) {
      systemInputs = null;
    } else {
          systemInputs = (json['systemInputs'] as Map).cast<String, String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (content != null)
      json['content'] = content;
    if (data != null)
      json['data'] = data;
    if (systemInputs != null)
      json['systemInputs'] = systemInputs;
    return json;
  }

  static List<EventTransformResult> listFromJson(List<dynamic> json) {
    return json == null ? List<EventTransformResult>() : json.map((value) => EventTransformResult.fromJson(value)).toList();
  }

  static Map<String, EventTransformResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EventTransformResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EventTransformResult.fromJson(value));
    }
    return map;
  }
}

