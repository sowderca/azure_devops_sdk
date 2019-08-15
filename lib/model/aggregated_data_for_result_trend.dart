part of azure_devops_sdk.api;

class AggregatedDataForResultTrend {
  /* This is tests execution duration. */
  String duration = null;
  
  Map<String, AggregatedResultsByOutcome> resultsByOutcome = {};
  
  Map<String, AggregatedRunsByState> runSummaryByState = {};
  
  TestResultsContext testResultsContext = null;
  
  int totalTests = null;
  AggregatedDataForResultTrend();

  @override
  String toString() {
    return 'AggregatedDataForResultTrend[duration=$duration, resultsByOutcome=$resultsByOutcome, runSummaryByState=$runSummaryByState, testResultsContext=$testResultsContext, totalTests=$totalTests, ]';
  }

  AggregatedDataForResultTrend.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['duration'] == null) {
      duration = null;
    } else {
          duration = json['duration'];
    }
    if (json['resultsByOutcome'] == null) {
      resultsByOutcome = null;
    } else {
      resultsByOutcome = AggregatedResultsByOutcome.mapFromJson(json['resultsByOutcome']);
    }
    if (json['runSummaryByState'] == null) {
      runSummaryByState = null;
    } else {
      runSummaryByState = AggregatedRunsByState.mapFromJson(json['runSummaryByState']);
    }
    if (json['testResultsContext'] == null) {
      testResultsContext = null;
    } else {
      testResultsContext = TestResultsContext.fromJson(json['testResultsContext']);
    }
    if (json['totalTests'] == null) {
      totalTests = null;
    } else {
          totalTests = json['totalTests'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (duration != null)
      json['duration'] = duration;
    if (resultsByOutcome != null)
      json['resultsByOutcome'] = resultsByOutcome;
    if (runSummaryByState != null)
      json['runSummaryByState'] = runSummaryByState;
    if (testResultsContext != null)
      json['testResultsContext'] = testResultsContext;
    if (totalTests != null)
      json['totalTests'] = totalTests;
    return json;
  }

  static List<AggregatedDataForResultTrend> listFromJson(List<dynamic> json) {
    return json == null ? List<AggregatedDataForResultTrend>() : json.map((value) => AggregatedDataForResultTrend.fromJson(value)).toList();
  }

  static Map<String, AggregatedDataForResultTrend> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AggregatedDataForResultTrend>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AggregatedDataForResultTrend.fromJson(value));
    }
    return map;
  }
}

