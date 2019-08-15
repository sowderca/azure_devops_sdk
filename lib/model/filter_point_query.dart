part of azure_devops_sdk.api;

class FilterPointQuery {
  
  int planId = null;
  
  List<int> pointIds = [];
  
  List<String> pointOutcome = [];
  
  List<String> resultState = [];
  FilterPointQuery();

  @override
  String toString() {
    return 'FilterPointQuery[planId=$planId, pointIds=$pointIds, pointOutcome=$pointOutcome, resultState=$resultState, ]';
  }

  FilterPointQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['planId'] == null) {
      planId = null;
    } else {
          planId = json['planId'];
    }
    if (json['pointIds'] == null) {
      pointIds = null;
    } else {
      pointIds = (json['pointIds'] as List).cast<int>();
    }
    if (json['pointOutcome'] == null) {
      pointOutcome = null;
    } else {
      pointOutcome = (json['pointOutcome'] as List).cast<String>();
    }
    if (json['resultState'] == null) {
      resultState = null;
    } else {
      resultState = (json['resultState'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (planId != null)
      json['planId'] = planId;
    if (pointIds != null)
      json['pointIds'] = pointIds;
    if (pointOutcome != null)
      json['pointOutcome'] = pointOutcome;
    if (resultState != null)
      json['resultState'] = resultState;
    return json;
  }

  static List<FilterPointQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<FilterPointQuery>() : json.map((value) => FilterPointQuery.fromJson(value)).toList();
  }

  static Map<String, FilterPointQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FilterPointQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FilterPointQuery.fromJson(value));
    }
    return map;
  }
}

