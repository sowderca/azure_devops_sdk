part of azure_devops_sdk.api;

class TestResultsDetailsForGroup {
  
  Object groupByValue = null;
  
  List<TestCaseResult> results = [];
  
  Map<String, AggregatedResultsByOutcome> resultsCountByOutcome = {};
  
  List<String> tags = [];
  TestResultsDetailsForGroup();

  @override
  String toString() {
    return 'TestResultsDetailsForGroup[groupByValue=$groupByValue, results=$results, resultsCountByOutcome=$resultsCountByOutcome, tags=$tags, ]';
  }

  TestResultsDetailsForGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['groupByValue'] == null) {
      groupByValue = null;
    } else {
          groupByValue = json['groupByValue'];
    }
    if (json['results'] == null) {
      results = null;
    } else {
      results = TestCaseResult.listFromJson(json['results']);
    }
    if (json['resultsCountByOutcome'] == null) {
      resultsCountByOutcome = null;
    } else {
      resultsCountByOutcome = AggregatedResultsByOutcome.mapFromJson(json['resultsCountByOutcome']);
    }
    if (json['tags'] == null) {
      tags = null;
    } else {
      tags = (json['tags'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (groupByValue != null)
      json['groupByValue'] = groupByValue;
    if (results != null)
      json['results'] = results;
    if (resultsCountByOutcome != null)
      json['resultsCountByOutcome'] = resultsCountByOutcome;
    if (tags != null)
      json['tags'] = tags;
    return json;
  }

  static List<TestResultsDetailsForGroup> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultsDetailsForGroup>() : json.map((value) => TestResultsDetailsForGroup.fromJson(value)).toList();
  }

  static Map<String, TestResultsDetailsForGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultsDetailsForGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultsDetailsForGroup.fromJson(value));
    }
    return map;
  }
}

