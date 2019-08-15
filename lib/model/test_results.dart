part of azure_devops_sdk.api;

class TestResults {
  /* The uri to the test run results file. */
  String cloudLoadTestSolutionUrl = null;
  
  List<CounterGroup> counterGroups = [];
  
  Diagnostics diagnostics = null;
  /* The uri to the test run results file. */
  String resultsUrl = null;
  TestResults();

  @override
  String toString() {
    return 'TestResults[cloudLoadTestSolutionUrl=$cloudLoadTestSolutionUrl, counterGroups=$counterGroups, diagnostics=$diagnostics, resultsUrl=$resultsUrl, ]';
  }

  TestResults.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['cloudLoadTestSolutionUrl'] == null) {
      cloudLoadTestSolutionUrl = null;
    } else {
          cloudLoadTestSolutionUrl = json['cloudLoadTestSolutionUrl'];
    }
    if (json['counterGroups'] == null) {
      counterGroups = null;
    } else {
      counterGroups = CounterGroup.listFromJson(json['counterGroups']);
    }
    if (json['diagnostics'] == null) {
      diagnostics = null;
    } else {
      diagnostics = Diagnostics.fromJson(json['diagnostics']);
    }
    if (json['resultsUrl'] == null) {
      resultsUrl = null;
    } else {
          resultsUrl = json['resultsUrl'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cloudLoadTestSolutionUrl != null)
      json['cloudLoadTestSolutionUrl'] = cloudLoadTestSolutionUrl;
    if (counterGroups != null)
      json['counterGroups'] = counterGroups;
    if (diagnostics != null)
      json['diagnostics'] = diagnostics;
    if (resultsUrl != null)
      json['resultsUrl'] = resultsUrl;
    return json;
  }

  static List<TestResults> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResults>() : json.map((value) => TestResults.fromJson(value)).toList();
  }

  static Map<String, TestResults> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResults>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResults.fromJson(value));
    }
    return map;
  }
}

