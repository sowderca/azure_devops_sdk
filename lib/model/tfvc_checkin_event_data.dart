part of azure_devops_sdk.api;

class TfvcCheckinEventData {
  
  TfvcChangeset changeset = null;
  
  TeamProjectReference project = null;
  TfvcCheckinEventData();

  @override
  String toString() {
    return 'TfvcCheckinEventData[changeset=$changeset, project=$project, ]';
  }

  TfvcCheckinEventData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['changeset'] == null) {
      changeset = null;
    } else {
      changeset = TfvcChangeset.fromJson(json['changeset']);
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = TeamProjectReference.fromJson(json['project']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changeset != null)
      json['changeset'] = changeset;
    if (project != null)
      json['project'] = project;
    return json;
  }

  static List<TfvcCheckinEventData> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcCheckinEventData>() : json.map((value) => TfvcCheckinEventData.fromJson(value)).toList();
  }

  static Map<String, TfvcCheckinEventData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcCheckinEventData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcCheckinEventData.fromJson(value));
    }
    return map;
  }
}

