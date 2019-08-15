part of azure_devops_sdk.api;

class TestPointResults {
  /* Failure Type for the Test Point */
  String failureType = null;
  //enum failureTypeEnum {  none,  regression,  new_Issue,  known_Issue,  unknown,  null_Value,  maxValue,  };{
  /* Last Resolution State Id for the TEst Point */
  String lastResolutionState = null;
  //enum lastResolutionStateEnum {  none,  needsInvestigation,  testIssue,  productIssue,  configurationIssue,  nullValue,  maxValue,  };{
  
  LastResultDetails lastResultDetails = null;
  /* Last Result Id */
  int lastResultId = null;
  /* Last Result State of the Test Point */
  String lastResultState = null;
  //enum lastResultStateEnum {  unspecified,  pending,  queued,  inProgress,  paused,  completed,  maxValue,  };{
  /* Last RUn Build Number for the Test Point */
  String lastRunBuildNumber = null;
  /* Last Test Run Id for the Test Point */
  int lastTestRunId = null;
  /* Outcome of the Test Point */
  String outcome = null;
  //enum outcomeEnum {  unspecified,  none,  passed,  failed,  inconclusive,  timeout,  aborted,  blocked,  notExecuted,  warning,  error,  notApplicable,  paused,  inProgress,  notImpacted,  maxValue,  };{
  /* State of the Test Point */
  String state = null;
  //enum stateEnum {  none,  ready,  completed,  notReady,  inProgress,  maxValue,  };{
  TestPointResults();

  @override
  String toString() {
    return 'TestPointResults[failureType=$failureType, lastResolutionState=$lastResolutionState, lastResultDetails=$lastResultDetails, lastResultId=$lastResultId, lastResultState=$lastResultState, lastRunBuildNumber=$lastRunBuildNumber, lastTestRunId=$lastTestRunId, outcome=$outcome, state=$state, ]';
  }

  TestPointResults.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['failureType'] == null) {
      failureType = null;
    } else {
          failureType = json['failureType'];
    }
    if (json['lastResolutionState'] == null) {
      lastResolutionState = null;
    } else {
          lastResolutionState = json['lastResolutionState'];
    }
    if (json['lastResultDetails'] == null) {
      lastResultDetails = null;
    } else {
      lastResultDetails = LastResultDetails.fromJson(json['lastResultDetails']);
    }
    if (json['lastResultId'] == null) {
      lastResultId = null;
    } else {
          lastResultId = json['lastResultId'];
    }
    if (json['lastResultState'] == null) {
      lastResultState = null;
    } else {
          lastResultState = json['lastResultState'];
    }
    if (json['lastRunBuildNumber'] == null) {
      lastRunBuildNumber = null;
    } else {
          lastRunBuildNumber = json['lastRunBuildNumber'];
    }
    if (json['lastTestRunId'] == null) {
      lastTestRunId = null;
    } else {
          lastTestRunId = json['lastTestRunId'];
    }
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (failureType != null)
      json['failureType'] = failureType;
    if (lastResolutionState != null)
      json['lastResolutionState'] = lastResolutionState;
    if (lastResultDetails != null)
      json['lastResultDetails'] = lastResultDetails;
    if (lastResultId != null)
      json['lastResultId'] = lastResultId;
    if (lastResultState != null)
      json['lastResultState'] = lastResultState;
    if (lastRunBuildNumber != null)
      json['lastRunBuildNumber'] = lastRunBuildNumber;
    if (lastTestRunId != null)
      json['lastTestRunId'] = lastTestRunId;
    if (outcome != null)
      json['outcome'] = outcome;
    if (state != null)
      json['state'] = state;
    return json;
  }

  static List<TestPointResults> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPointResults>() : json.map((value) => TestPointResults.fromJson(value)).toList();
  }

  static Map<String, TestPointResults> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPointResults>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPointResults.fromJson(value));
    }
    return map;
  }
}

