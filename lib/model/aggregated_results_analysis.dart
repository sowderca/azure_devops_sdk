part of azure_devops_sdk.api;

class AggregatedResultsAnalysis {
  
  String duration = null;
  
  Map<String, AggregatedResultsByOutcome> notReportedResultsByOutcome = {};
  
  TestResultsContext previousContext = null;
  
  Map<String, AggregatedResultsByOutcome> resultsByOutcome = {};
  
  AggregatedResultsDifference resultsDifference = null;
  
  Map<String, AggregatedRunsByOutcome> runSummaryByOutcome = {};
  
  Map<String, AggregatedRunsByState> runSummaryByState = {};
  
  int totalTests = null;
  AggregatedResultsAnalysis();

  @override
  String toString() {
    return 'AggregatedResultsAnalysis[duration=$duration, notReportedResultsByOutcome=$notReportedResultsByOutcome, previousContext=$previousContext, resultsByOutcome=$resultsByOutcome, resultsDifference=$resultsDifference, runSummaryByOutcome=$runSummaryByOutcome, runSummaryByState=$runSummaryByState, totalTests=$totalTests, ]';
  }

  AggregatedResultsAnalysis.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['duration'] == null) {
      duration = null;
    } else {
          duration = json['duration'];
    }
    if (json['notReportedResultsByOutcome'] == null) {
      notReportedResultsByOutcome = null;
    } else {
      notReportedResultsByOutcome = AggregatedResultsByOutcome.mapFromJson(json['notReportedResultsByOutcome']);
    }
    if (json['previousContext'] == null) {
      previousContext = null;
    } else {
      previousContext = TestResultsContext.fromJson(json['previousContext']);
    }
    if (json['resultsByOutcome'] == null) {
      resultsByOutcome = null;
    } else {
      resultsByOutcome = AggregatedResultsByOutcome.mapFromJson(json['resultsByOutcome']);
    }
    if (json['resultsDifference'] == null) {
      resultsDifference = null;
    } else {
      resultsDifference = AggregatedResultsDifference.fromJson(json['resultsDifference']);
    }
    if (json['runSummaryByOutcome'] == null) {
      runSummaryByOutcome = null;
    } else {
      runSummaryByOutcome = AggregatedRunsByOutcome.mapFromJson(json['runSummaryByOutcome']);
    }
    if (json['runSummaryByState'] == null) {
      runSummaryByState = null;
    } else {
      runSummaryByState = AggregatedRunsByState.mapFromJson(json['runSummaryByState']);
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
    if (notReportedResultsByOutcome != null)
      json['notReportedResultsByOutcome'] = notReportedResultsByOutcome;
    if (previousContext != null)
      json['previousContext'] = previousContext;
    if (resultsByOutcome != null)
      json['resultsByOutcome'] = resultsByOutcome;
    if (resultsDifference != null)
      json['resultsDifference'] = resultsDifference;
    if (runSummaryByOutcome != null)
      json['runSummaryByOutcome'] = runSummaryByOutcome;
    if (runSummaryByState != null)
      json['runSummaryByState'] = runSummaryByState;
    if (totalTests != null)
      json['totalTests'] = totalTests;
    return json;
  }

  static List<AggregatedResultsAnalysis> listFromJson(List<dynamic> json) {
    return json == null ? List<AggregatedResultsAnalysis>() : json.map((value) => AggregatedResultsAnalysis.fromJson(value)).toList();
  }

  static Map<String, AggregatedResultsAnalysis> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AggregatedResultsAnalysis>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AggregatedResultsAnalysis.fromJson(value));
    }
    return map;
  }
}

