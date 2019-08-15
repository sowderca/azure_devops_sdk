part of azure_devops_sdk.api;

class RunFilter {
  /* filter for the test case sources (test containers) */
  String sourceFilter = null;
  /* filter for the test cases */
  String testCaseFilter = null;
  RunFilter();

  @override
  String toString() {
    return 'RunFilter[sourceFilter=$sourceFilter, testCaseFilter=$testCaseFilter, ]';
  }

  RunFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['sourceFilter'] == null) {
      sourceFilter = null;
    } else {
          sourceFilter = json['sourceFilter'];
    }
    if (json['testCaseFilter'] == null) {
      testCaseFilter = null;
    } else {
          testCaseFilter = json['testCaseFilter'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (sourceFilter != null)
      json['sourceFilter'] = sourceFilter;
    if (testCaseFilter != null)
      json['testCaseFilter'] = testCaseFilter;
    return json;
  }

  static List<RunFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<RunFilter>() : json.map((value) => RunFilter.fromJson(value)).toList();
  }

  static Map<String, RunFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RunFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RunFilter.fromJson(value));
    }
    return map;
  }
}

