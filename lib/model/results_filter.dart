part of azure_devops_sdk.api;

class ResultsFilter {
  
  String automatedTestName = null;
  
  String branch = null;
  
  String executedIn = null;
  //enum executedInEnum {  any,  tcm,  tfs,  };{
  
  String groupBy = null;
  
  DateTime maxCompleteDate = null;
  
  int resultsCount = null;
  
  int testCaseId = null;
  
  List<int> testCaseReferenceIds = [];
  
  int testPlanId = null;
  
  List<int> testPointIds = [];
  
  TestResultsContext testResultsContext = null;
  
  int trendDays = null;
  ResultsFilter();

  @override
  String toString() {
    return 'ResultsFilter[automatedTestName=$automatedTestName, branch=$branch, executedIn=$executedIn, groupBy=$groupBy, maxCompleteDate=$maxCompleteDate, resultsCount=$resultsCount, testCaseId=$testCaseId, testCaseReferenceIds=$testCaseReferenceIds, testPlanId=$testPlanId, testPointIds=$testPointIds, testResultsContext=$testResultsContext, trendDays=$trendDays, ]';
  }

  ResultsFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['automatedTestName'] == null) {
      automatedTestName = null;
    } else {
          automatedTestName = json['automatedTestName'];
    }
    if (json['branch'] == null) {
      branch = null;
    } else {
          branch = json['branch'];
    }
    if (json['executedIn'] == null) {
      executedIn = null;
    } else {
          executedIn = json['executedIn'];
    }
    if (json['groupBy'] == null) {
      groupBy = null;
    } else {
          groupBy = json['groupBy'];
    }
    if (json['maxCompleteDate'] == null) {
      maxCompleteDate = null;
    } else {
      maxCompleteDate = DateTime.parse(json['maxCompleteDate']);
    }
    if (json['resultsCount'] == null) {
      resultsCount = null;
    } else {
          resultsCount = json['resultsCount'];
    }
    if (json['testCaseId'] == null) {
      testCaseId = null;
    } else {
          testCaseId = json['testCaseId'];
    }
    if (json['testCaseReferenceIds'] == null) {
      testCaseReferenceIds = null;
    } else {
      testCaseReferenceIds = (json['testCaseReferenceIds'] as List).cast<int>();
    }
    if (json['testPlanId'] == null) {
      testPlanId = null;
    } else {
          testPlanId = json['testPlanId'];
    }
    if (json['testPointIds'] == null) {
      testPointIds = null;
    } else {
      testPointIds = (json['testPointIds'] as List).cast<int>();
    }
    if (json['testResultsContext'] == null) {
      testResultsContext = null;
    } else {
      testResultsContext = TestResultsContext.fromJson(json['testResultsContext']);
    }
    if (json['trendDays'] == null) {
      trendDays = null;
    } else {
          trendDays = json['trendDays'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (automatedTestName != null)
      json['automatedTestName'] = automatedTestName;
    if (branch != null)
      json['branch'] = branch;
    if (executedIn != null)
      json['executedIn'] = executedIn;
    if (groupBy != null)
      json['groupBy'] = groupBy;
    if (maxCompleteDate != null)
      json['maxCompleteDate'] = maxCompleteDate == null ? null : maxCompleteDate.toUtc().toIso8601String();
    if (resultsCount != null)
      json['resultsCount'] = resultsCount;
    if (testCaseId != null)
      json['testCaseId'] = testCaseId;
    if (testCaseReferenceIds != null)
      json['testCaseReferenceIds'] = testCaseReferenceIds;
    if (testPlanId != null)
      json['testPlanId'] = testPlanId;
    if (testPointIds != null)
      json['testPointIds'] = testPointIds;
    if (testResultsContext != null)
      json['testResultsContext'] = testResultsContext;
    if (trendDays != null)
      json['trendDays'] = trendDays;
    return json;
  }

  static List<ResultsFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<ResultsFilter>() : json.map((value) => ResultsFilter.fromJson(value)).toList();
  }

  static Map<String, ResultsFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResultsFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResultsFilter.fromJson(value));
    }
    return map;
  }
}

