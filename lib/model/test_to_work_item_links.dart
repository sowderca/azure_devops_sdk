part of azure_devops_sdk.api;

class TestToWorkItemLinks {
  
  TestMethod test = null;
  
  List<WorkItemReference> workItems = [];
  TestToWorkItemLinks();

  @override
  String toString() {
    return 'TestToWorkItemLinks[test=$test, workItems=$workItems, ]';
  }

  TestToWorkItemLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['test'] == null) {
      test = null;
    } else {
      test = TestMethod.fromJson(json['test']);
    }
    if (json['workItems'] == null) {
      workItems = null;
    } else {
      workItems = WorkItemReference.listFromJson(json['workItems']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (test != null)
      json['test'] = test;
    if (workItems != null)
      json['workItems'] = workItems;
    return json;
  }

  static List<TestToWorkItemLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<TestToWorkItemLinks>() : json.map((value) => TestToWorkItemLinks.fromJson(value)).toList();
  }

  static Map<String, TestToWorkItemLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestToWorkItemLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestToWorkItemLinks.fromJson(value));
    }
    return map;
  }
}

