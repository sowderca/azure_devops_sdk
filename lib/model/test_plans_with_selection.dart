part of azure_devops_sdk.api;

class TestPlansWithSelection {
  
  int lastSelectedPlan = null;
  
  int lastSelectedSuite = null;
  
  List<TestPlan> plans = [];
  TestPlansWithSelection();

  @override
  String toString() {
    return 'TestPlansWithSelection[lastSelectedPlan=$lastSelectedPlan, lastSelectedSuite=$lastSelectedSuite, plans=$plans, ]';
  }

  TestPlansWithSelection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['lastSelectedPlan'] == null) {
      lastSelectedPlan = null;
    } else {
          lastSelectedPlan = json['lastSelectedPlan'];
    }
    if (json['lastSelectedSuite'] == null) {
      lastSelectedSuite = null;
    } else {
          lastSelectedSuite = json['lastSelectedSuite'];
    }
    if (json['plans'] == null) {
      plans = null;
    } else {
      plans = TestPlan.listFromJson(json['plans']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (lastSelectedPlan != null)
      json['lastSelectedPlan'] = lastSelectedPlan;
    if (lastSelectedSuite != null)
      json['lastSelectedSuite'] = lastSelectedSuite;
    if (plans != null)
      json['plans'] = plans;
    return json;
  }

  static List<TestPlansWithSelection> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPlansWithSelection>() : json.map((value) => TestPlansWithSelection.fromJson(value)).toList();
  }

  static Map<String, TestPlansWithSelection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPlansWithSelection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPlansWithSelection.fromJson(value));
    }
    return map;
  }
}

