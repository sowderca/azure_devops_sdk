part of azure_devops_sdk.api;

class ArtifactFilter {
  
  String eventType = null;
  
  String type = null;
  ArtifactFilter();

  @override
  String toString() {
    return 'ArtifactFilter[eventType=$eventType, type=$type, ]';
  }

  ArtifactFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['eventType'] == null) {
      eventType = null;
    } else {
          eventType = json['eventType'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (eventType != null)
      json['eventType'] = eventType;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<ArtifactFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactFilter>() : json.map((value) => ArtifactFilter.fromJson(value)).toList();
  }

  static Map<String, ArtifactFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactFilter.fromJson(value));
    }
    return map;
  }
}

