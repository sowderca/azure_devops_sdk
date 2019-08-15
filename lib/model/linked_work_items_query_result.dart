part of azure_devops_sdk.api;

class LinkedWorkItemsQueryResult {
  
  String automatedTestName = null;
  
  int planId = null;
  
  int pointId = null;
  
  int suiteId = null;
  
  int testCaseId = null;
  
  List<WorkItemReference> workItems = [];
  LinkedWorkItemsQueryResult();

  @override
  String toString() {
    return 'LinkedWorkItemsQueryResult[automatedTestName=$automatedTestName, planId=$planId, pointId=$pointId, suiteId=$suiteId, testCaseId=$testCaseId, workItems=$workItems, ]';
  }

  LinkedWorkItemsQueryResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['automatedTestName'] == null) {
      automatedTestName = null;
    } else {
          automatedTestName = json['automatedTestName'];
    }
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
    if (json['suiteId'] == null) {
      suiteId = null;
    } else {
          suiteId = json['suiteId'];
    }
    if (json['testCaseId'] == null) {
      testCaseId = null;
    } else {
          testCaseId = json['testCaseId'];
    }
    if (json['workItems'] == null) {
      workItems = null;
    } else {
      workItems = WorkItemReference.listFromJson(json['workItems']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (automatedTestName != null)
      json['automatedTestName'] = automatedTestName;
    if (planId != null)
      json['planId'] = planId;
    if (pointId != null)
      json['pointId'] = pointId;
    if (suiteId != null)
      json['suiteId'] = suiteId;
    if (testCaseId != null)
      json['testCaseId'] = testCaseId;
    if (workItems != null)
      json['workItems'] = workItems;
    return json;
  }

  static List<LinkedWorkItemsQueryResult> listFromJson(List<dynamic> json) {
    return json == null ? List<LinkedWorkItemsQueryResult>() : json.map((value) => LinkedWorkItemsQueryResult.fromJson(value)).toList();
  }

  static Map<String, LinkedWorkItemsQueryResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LinkedWorkItemsQueryResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LinkedWorkItemsQueryResult.fromJson(value));
    }
    return map;
  }
}

