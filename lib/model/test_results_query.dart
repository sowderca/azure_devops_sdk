part of azure_devops_sdk.api;

class TestResultsQuery {
  
  List<String> fields = [];
  
  List<TestCaseResult> results = [];
  
  ResultsFilter resultsFilter = null;
  TestResultsQuery();

  @override
  String toString() {
    return 'TestResultsQuery[fields=$fields, results=$results, resultsFilter=$resultsFilter, ]';
  }

  TestResultsQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['fields'] == null) {
      fields = null;
    } else {
      fields = (json['fields'] as List).cast<String>();
    }
    if (json['results'] == null) {
      results = null;
    } else {
      results = TestCaseResult.listFromJson(json['results']);
    }
    if (json['resultsFilter'] == null) {
      resultsFilter = null;
    } else {
      resultsFilter = ResultsFilter.fromJson(json['resultsFilter']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fields != null)
      json['fields'] = fields;
    if (results != null)
      json['results'] = results;
    if (resultsFilter != null)
      json['resultsFilter'] = resultsFilter;
    return json;
  }

  static List<TestResultsQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultsQuery>() : json.map((value) => TestResultsQuery.fromJson(value)).toList();
  }

  static Map<String, TestResultsQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultsQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultsQuery.fromJson(value));
    }
    return map;
  }
}

