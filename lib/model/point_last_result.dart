part of azure_devops_sdk.api;

class PointLastResult {
  
  DateTime lastUpdatedDate = null;
  
  int pointId = null;
  PointLastResult();

  @override
  String toString() {
    return 'PointLastResult[lastUpdatedDate=$lastUpdatedDate, pointId=$pointId, ]';
  }

  PointLastResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['lastUpdatedDate'] == null) {
      lastUpdatedDate = null;
    } else {
      lastUpdatedDate = DateTime.parse(json['lastUpdatedDate']);
    }
    if (json['pointId'] == null) {
      pointId = null;
    } else {
          pointId = json['pointId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (lastUpdatedDate != null)
      json['lastUpdatedDate'] = lastUpdatedDate == null ? null : lastUpdatedDate.toUtc().toIso8601String();
    if (pointId != null)
      json['pointId'] = pointId;
    return json;
  }

  static List<PointLastResult> listFromJson(List<dynamic> json) {
    return json == null ? List<PointLastResult>() : json.map((value) => PointLastResult.fromJson(value)).toList();
  }

  static Map<String, PointLastResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PointLastResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PointLastResult.fromJson(value));
    }
    return map;
  }
}

