part of azure_devops_sdk.api;

class TestResultSummary {
  
  AggregatedResultsAnalysis aggregatedResultsAnalysis = null;
  
  int noConfigRunsCount = null;
  
  TeamProjectReference teamProject = null;
  
  TestFailuresAnalysis testFailures = null;
  
  TestResultsContext testResultsContext = null;
  
  int totalRunsCount = null;
  TestResultSummary();

  @override
  String toString() {
    return 'TestResultSummary[aggregatedResultsAnalysis=$aggregatedResultsAnalysis, noConfigRunsCount=$noConfigRunsCount, teamProject=$teamProject, testFailures=$testFailures, testResultsContext=$testResultsContext, totalRunsCount=$totalRunsCount, ]';
  }

  TestResultSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['aggregatedResultsAnalysis'] == null) {
      aggregatedResultsAnalysis = null;
    } else {
      aggregatedResultsAnalysis = AggregatedResultsAnalysis.fromJson(json['aggregatedResultsAnalysis']);
    }
    if (json['noConfigRunsCount'] == null) {
      noConfigRunsCount = null;
    } else {
          noConfigRunsCount = json['noConfigRunsCount'];
    }
    if (json['teamProject'] == null) {
      teamProject = null;
    } else {
      teamProject = TeamProjectReference.fromJson(json['teamProject']);
    }
    if (json['testFailures'] == null) {
      testFailures = null;
    } else {
      testFailures = TestFailuresAnalysis.fromJson(json['testFailures']);
    }
    if (json['testResultsContext'] == null) {
      testResultsContext = null;
    } else {
      testResultsContext = TestResultsContext.fromJson(json['testResultsContext']);
    }
    if (json['totalRunsCount'] == null) {
      totalRunsCount = null;
    } else {
          totalRunsCount = json['totalRunsCount'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (aggregatedResultsAnalysis != null)
      json['aggregatedResultsAnalysis'] = aggregatedResultsAnalysis;
    if (noConfigRunsCount != null)
      json['noConfigRunsCount'] = noConfigRunsCount;
    if (teamProject != null)
      json['teamProject'] = teamProject;
    if (testFailures != null)
      json['testFailures'] = testFailures;
    if (testResultsContext != null)
      json['testResultsContext'] = testResultsContext;
    if (totalRunsCount != null)
      json['totalRunsCount'] = totalRunsCount;
    return json;
  }

  static List<TestResultSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultSummary>() : json.map((value) => TestResultSummary.fromJson(value)).toList();
  }

  static Map<String, TestResultSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultSummary.fromJson(value));
    }
    return map;
  }
}

