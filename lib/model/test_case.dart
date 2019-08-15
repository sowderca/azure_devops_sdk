part of azure_devops_sdk.api;

class TestCase {
  
  ReferenceLinks links = null;
  /* Order of the TestCase in the Suite */
  int order = null;
  /* List of Points associated with the Test Case */
  List<PointAssignment> pointAssignments = [];
  
  TeamProjectReference project = null;
  
  TestPlanReference testPlan = null;
  
  TestSuiteReference testSuite = null;
  
  WorkItemDetails workItem = null;
  TestCase();

  @override
  String toString() {
    return 'TestCase[links=$links, order=$order, pointAssignments=$pointAssignments, project=$project, testPlan=$testPlan, testSuite=$testSuite, workItem=$workItem, ]';
  }

  TestCase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['links']);
    }
    if (json['order'] == null) {
      order = null;
    } else {
          order = json['order'];
    }
    if (json['pointAssignments'] == null) {
      pointAssignments = null;
    } else {
      pointAssignments = PointAssignment.listFromJson(json['pointAssignments']);
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = TeamProjectReference.fromJson(json['project']);
    }
    if (json['testPlan'] == null) {
      testPlan = null;
    } else {
      testPlan = TestPlanReference.fromJson(json['testPlan']);
    }
    if (json['testSuite'] == null) {
      testSuite = null;
    } else {
      testSuite = TestSuiteReference.fromJson(json['testSuite']);
    }
    if (json['workItem'] == null) {
      workItem = null;
    } else {
      workItem = WorkItemDetails.fromJson(json['workItem']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['links'] = links;
    if (order != null)
      json['order'] = order;
    if (pointAssignments != null)
      json['pointAssignments'] = pointAssignments;
    if (project != null)
      json['project'] = project;
    if (testPlan != null)
      json['testPlan'] = testPlan;
    if (testSuite != null)
      json['testSuite'] = testSuite;
    if (workItem != null)
      json['workItem'] = workItem;
    return json;
  }

  static List<TestCase> listFromJson(List<dynamic> json) {
    return json == null ? List<TestCase>() : json.map((value) => TestCase.fromJson(value)).toList();
  }

  static Map<String, TestCase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestCase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestCase.fromJson(value));
    }
    return map;
  }
}

