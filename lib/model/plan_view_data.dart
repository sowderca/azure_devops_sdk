part of azure_devops_sdk.api;

class PlanViewData {
  
  String id = null;
  
  int revision = null;
  PlanViewData();

  @override
  String toString() {
    return 'PlanViewData[id=$id, revision=$revision, ]';
  }

  PlanViewData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (revision != null)
      json['revision'] = revision;
    return json;
  }

  static List<PlanViewData> listFromJson(List<dynamic> json) {
    return json == null ? List<PlanViewData>() : json.map((value) => PlanViewData.fromJson(value)).toList();
  }

  static Map<String, PlanViewData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlanViewData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PlanViewData.fromJson(value));
    }
    return map;
  }
}

