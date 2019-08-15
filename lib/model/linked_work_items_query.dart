part of azure_devops_sdk.api;

class LinkedWorkItemsQuery {
  
  List<String> automatedTestNames = [];
  
  int planId = null;
  
  List<int> pointIds = [];
  
  List<int> suiteIds = [];
  
  List<int> testCaseIds = [];
  
  String workItemCategory = null;
  LinkedWorkItemsQuery();

  @override
  String toString() {
    return 'LinkedWorkItemsQuery[automatedTestNames=$automatedTestNames, planId=$planId, pointIds=$pointIds, suiteIds=$suiteIds, testCaseIds=$testCaseIds, workItemCategory=$workItemCategory, ]';
  }

  LinkedWorkItemsQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['automatedTestNames'] == null) {
      automatedTestNames = null;
    } else {
      automatedTestNames = (json['automatedTestNames'] as List).cast<String>();
    }
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
    if (json['suiteIds'] == null) {
      suiteIds = null;
    } else {
      suiteIds = (json['suiteIds'] as List).cast<int>();
    }
    if (json['testCaseIds'] == null) {
      testCaseIds = null;
    } else {
      testCaseIds = (json['testCaseIds'] as List).cast<int>();
    }
    if (json['workItemCategory'] == null) {
      workItemCategory = null;
    } else {
          workItemCategory = json['workItemCategory'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (automatedTestNames != null)
      json['automatedTestNames'] = automatedTestNames;
    if (planId != null)
      json['planId'] = planId;
    if (pointIds != null)
      json['pointIds'] = pointIds;
    if (suiteIds != null)
      json['suiteIds'] = suiteIds;
    if (testCaseIds != null)
      json['testCaseIds'] = testCaseIds;
    if (workItemCategory != null)
      json['workItemCategory'] = workItemCategory;
    return json;
  }

  static List<LinkedWorkItemsQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<LinkedWorkItemsQuery>() : json.map((value) => LinkedWorkItemsQuery.fromJson(value)).toList();
  }

  static Map<String, LinkedWorkItemsQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LinkedWorkItemsQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LinkedWorkItemsQuery.fromJson(value));
    }
    return map;
  }
}

