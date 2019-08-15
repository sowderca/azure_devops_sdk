part of azure_devops_sdk.api;

class RunSummaryModel {
  /* Total time taken in milliseconds. */
  int duration = null;
  /* Number of results for Outcome TestOutcome */
  int resultCount = null;
  /* Summary is based on outcome */
  String testOutcome = null;
  //enum testOutcomeEnum {  unspecified,  none,  passed,  failed,  inconclusive,  timeout,  aborted,  blocked,  notExecuted,  warning,  error,  notApplicable,  paused,  inProgress,  notImpacted,  };{
  RunSummaryModel();

  @override
  String toString() {
    return 'RunSummaryModel[duration=$duration, resultCount=$resultCount, testOutcome=$testOutcome, ]';
  }

  RunSummaryModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['duration'] == null) {
      duration = null;
    } else {
          duration = json['duration'];
    }
    if (json['resultCount'] == null) {
      resultCount = null;
    } else {
          resultCount = json['resultCount'];
    }
    if (json['testOutcome'] == null) {
      testOutcome = null;
    } else {
          testOutcome = json['testOutcome'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (duration != null)
      json['duration'] = duration;
    if (resultCount != null)
      json['resultCount'] = resultCount;
    if (testOutcome != null)
      json['testOutcome'] = testOutcome;
    return json;
  }

  static List<RunSummaryModel> listFromJson(List<dynamic> json) {
    return json == null ? List<RunSummaryModel>() : json.map((value) => RunSummaryModel.fromJson(value)).toList();
  }

  static Map<String, RunSummaryModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RunSummaryModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RunSummaryModel.fromJson(value));
    }
    return map;
  }
}

