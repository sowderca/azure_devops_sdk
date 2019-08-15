part of azure_devops_sdk.api;

class TestRunCoverage {
  /* Last Error */
  String lastError = null;
  /* List of Modules Coverage */
  List<ModuleCoverage> modules = [];
  /* State */
  String state = null;
  
  ShallowReference testRun = null;
  TestRunCoverage();

  @override
  String toString() {
    return 'TestRunCoverage[lastError=$lastError, modules=$modules, state=$state, testRun=$testRun, ]';
  }

  TestRunCoverage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['lastError'] == null) {
      lastError = null;
    } else {
          lastError = json['lastError'];
    }
    if (json['modules'] == null) {
      modules = null;
    } else {
      modules = ModuleCoverage.listFromJson(json['modules']);
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['testRun'] == null) {
      testRun = null;
    } else {
      testRun = ShallowReference.fromJson(json['testRun']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (lastError != null)
      json['lastError'] = lastError;
    if (modules != null)
      json['modules'] = modules;
    if (state != null)
      json['state'] = state;
    if (testRun != null)
      json['testRun'] = testRun;
    return json;
  }

  static List<TestRunCoverage> listFromJson(List<dynamic> json) {
    return json == null ? List<TestRunCoverage>() : json.map((value) => TestRunCoverage.fromJson(value)).toList();
  }

  static Map<String, TestRunCoverage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestRunCoverage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestRunCoverage.fromJson(value));
    }
    return map;
  }
}

