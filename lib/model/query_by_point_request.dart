part of azure_devops_sdk.api;

class QueryByPointRequest {
  
  String projectName = null;
  
  int testPlanId = null;
  
  int testPointId = null;
  QueryByPointRequest();

  @override
  String toString() {
    return 'QueryByPointRequest[projectName=$projectName, testPlanId=$testPlanId, testPointId=$testPointId, ]';
  }

  QueryByPointRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
    if (json['testPlanId'] == null) {
      testPlanId = null;
    } else {
          testPlanId = json['testPlanId'];
    }
    if (json['testPointId'] == null) {
      testPointId = null;
    } else {
          testPointId = json['testPointId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (projectName != null)
      json['projectName'] = projectName;
    if (testPlanId != null)
      json['testPlanId'] = testPlanId;
    if (testPointId != null)
      json['testPointId'] = testPointId;
    return json;
  }

  static List<QueryByPointRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<QueryByPointRequest>() : json.map((value) => QueryByPointRequest.fromJson(value)).toList();
  }

  static Map<String, QueryByPointRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, QueryByPointRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = QueryByPointRequest.fromJson(value));
    }
    return map;
  }
}

