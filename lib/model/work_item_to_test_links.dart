part of azure_devops_sdk.api;

class WorkItemToTestLinks {
  
  String executedIn = null;
  //enum executedInEnum {  any,  tcm,  tfs,  };{
  
  List<TestMethod> tests = [];
  
  WorkItemReference workItem = null;
  WorkItemToTestLinks();

  @override
  String toString() {
    return 'WorkItemToTestLinks[executedIn=$executedIn, tests=$tests, workItem=$workItem, ]';
  }

  WorkItemToTestLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['executedIn'] == null) {
      executedIn = null;
    } else {
          executedIn = json['executedIn'];
    }
    if (json['tests'] == null) {
      tests = null;
    } else {
      tests = TestMethod.listFromJson(json['tests']);
    }
    if (json['workItem'] == null) {
      workItem = null;
    } else {
      workItem = WorkItemReference.fromJson(json['workItem']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (executedIn != null)
      json['executedIn'] = executedIn;
    if (tests != null)
      json['tests'] = tests;
    if (workItem != null)
      json['workItem'] = workItem;
    return json;
  }

  static List<WorkItemToTestLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemToTestLinks>() : json.map((value) => WorkItemToTestLinks.fromJson(value)).toList();
  }

  static Map<String, WorkItemToTestLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemToTestLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemToTestLinks.fromJson(value));
    }
    return map;
  }
}

