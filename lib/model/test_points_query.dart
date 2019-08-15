part of azure_devops_sdk.api;

class TestPointsQuery {
  /* Order by results. */
  String orderBy = null;
  /* List of test points */
  List<TestPoint> points = [];
  
  PointsFilter pointsFilter = null;
  /* List of workitem fields to get. */
  List<String> witFields = [];
  TestPointsQuery();

  @override
  String toString() {
    return 'TestPointsQuery[orderBy=$orderBy, points=$points, pointsFilter=$pointsFilter, witFields=$witFields, ]';
  }

  TestPointsQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['orderBy'] == null) {
      orderBy = null;
    } else {
          orderBy = json['orderBy'];
    }
    if (json['points'] == null) {
      points = null;
    } else {
      points = TestPoint.listFromJson(json['points']);
    }
    if (json['pointsFilter'] == null) {
      pointsFilter = null;
    } else {
      pointsFilter = PointsFilter.fromJson(json['pointsFilter']);
    }
    if (json['witFields'] == null) {
      witFields = null;
    } else {
      witFields = (json['witFields'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (orderBy != null)
      json['orderBy'] = orderBy;
    if (points != null)
      json['points'] = points;
    if (pointsFilter != null)
      json['pointsFilter'] = pointsFilter;
    if (witFields != null)
      json['witFields'] = witFields;
    return json;
  }

  static List<TestPointsQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPointsQuery>() : json.map((value) => TestPointsQuery.fromJson(value)).toList();
  }

  static Map<String, TestPointsQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPointsQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPointsQuery.fromJson(value));
    }
    return map;
  }
}

