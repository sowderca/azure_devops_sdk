part of azure_devops_sdk.api;

class TestRunSummary2 {
  
  bool isRerun = null;
  
  String projectId = null;
  
  int resultCount = null;
  
  int resultDuration = null;
  
  int runDuration = null;
  
  String testOutcome = null;
  
  DateTime testRunCompletedDate = null;
  
  int testRunContextId = null;
  
  int testRunId = null;
  
  int testRunStatsId = null;
  TestRunSummary2();

  @override
  String toString() {
    return 'TestRunSummary2[isRerun=$isRerun, projectId=$projectId, resultCount=$resultCount, resultDuration=$resultDuration, runDuration=$runDuration, testOutcome=$testOutcome, testRunCompletedDate=$testRunCompletedDate, testRunContextId=$testRunContextId, testRunId=$testRunId, testRunStatsId=$testRunStatsId, ]';
  }

  TestRunSummary2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isRerun'] == null) {
      isRerun = null;
    } else {
          isRerun = json['isRerun'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['resultCount'] == null) {
      resultCount = null;
    } else {
          resultCount = json['resultCount'];
    }
    if (json['resultDuration'] == null) {
      resultDuration = null;
    } else {
          resultDuration = json['resultDuration'];
    }
    if (json['runDuration'] == null) {
      runDuration = null;
    } else {
          runDuration = json['runDuration'];
    }
    if (json['testOutcome'] == null) {
      testOutcome = null;
    } else {
          testOutcome = json['testOutcome'];
    }
    if (json['testRunCompletedDate'] == null) {
      testRunCompletedDate = null;
    } else {
      testRunCompletedDate = DateTime.parse(json['testRunCompletedDate']);
    }
    if (json['testRunContextId'] == null) {
      testRunContextId = null;
    } else {
          testRunContextId = json['testRunContextId'];
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
    if (json['testRunStatsId'] == null) {
      testRunStatsId = null;
    } else {
          testRunStatsId = json['testRunStatsId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isRerun != null)
      json['isRerun'] = isRerun;
    if (projectId != null)
      json['projectId'] = projectId;
    if (resultCount != null)
      json['resultCount'] = resultCount;
    if (resultDuration != null)
      json['resultDuration'] = resultDuration;
    if (runDuration != null)
      json['runDuration'] = runDuration;
    if (testOutcome != null)
      json['testOutcome'] = testOutcome;
    if (testRunCompletedDate != null)
      json['testRunCompletedDate'] = testRunCompletedDate == null ? null : testRunCompletedDate.toUtc().toIso8601String();
    if (testRunContextId != null)
      json['testRunContextId'] = testRunContextId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    if (testRunStatsId != null)
      json['testRunStatsId'] = testRunStatsId;
    return json;
  }

  static List<TestRunSummary2> listFromJson(List<dynamic> json) {
    return json == null ? List<TestRunSummary2>() : json.map((value) => TestRunSummary2.fromJson(value)).toList();
  }

  static Map<String, TestRunSummary2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestRunSummary2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestRunSummary2.fromJson(value));
    }
    return map;
  }
}

