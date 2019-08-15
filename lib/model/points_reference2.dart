part of azure_devops_sdk.api;

class PointsReference2 {
  
  int planId = null;
  
  int pointId = null;
  PointsReference2();

  @override
  String toString() {
    return 'PointsReference2[planId=$planId, pointId=$pointId, ]';
  }

  PointsReference2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['planId'] == null) {
      planId = null;
    } else {
          planId = json['planId'];
    }
    if (json['pointId'] == null) {
      pointId = null;
    } else {
          pointId = json['pointId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (planId != null)
      json['planId'] = planId;
    if (pointId != null)
      json['pointId'] = pointId;
    return json;
  }

  static List<PointsReference2> listFromJson(List<dynamic> json) {
    return json == null ? List<PointsReference2>() : json.map((value) => PointsReference2.fromJson(value)).toList();
  }

  static Map<String, PointsReference2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PointsReference2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PointsReference2.fromJson(value));
    }
    return map;
  }
}

