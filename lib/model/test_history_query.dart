part of azure_devops_sdk.api;

class TestHistoryQuery {
  /* Automated test name of the TestCase. */
  String automatedTestName = null;
  /* Results to be get for a particular branches. */
  String branch = null;
  /* Get the results history only for this BuildDefinitionId. This to get used in query GroupBy should be Branch. If this is provided, Branch will have no use. */
  int buildDefinitionId = null;
  /* It will be filled by server. If not null means there are some results still to be get, and we need to call this REST API with this ContinuousToken. It is not supposed to be created (or altered, if received from server in last batch) by user. */
  String continuationToken = null;
  /* Group the result on the basis of TestResultGroupBy. This can be Branch, Environment or null(if results are fetched by BuildDefinitionId) */
  String groupBy = null;
  //enum groupByEnum {  branch,  environment,  };{
  /* History to get between time interval MaxCompleteDate and  (MaxCompleteDate - TrendDays). Default is current date time. */
  DateTime maxCompleteDate = null;
  /* Get the results history only for this ReleaseEnvDefinitionId. This to get used in query GroupBy should be Environment. */
  int releaseEnvDefinitionId = null;
  /* List of TestResultHistoryForGroup which are grouped by GroupBy */
  List<TestResultHistoryForGroup> resultsForGroup = [];
  /* Get the results history only for this testCaseId. This to get used in query to filter the result along with automatedtestname */
  int testCaseId = null;
  /* Number of days for which history to collect. Maximum supported value is 7 days. Default is 7 days. */
  int trendDays = null;
  TestHistoryQuery();

  @override
  String toString() {
    return 'TestHistoryQuery[automatedTestName=$automatedTestName, branch=$branch, buildDefinitionId=$buildDefinitionId, continuationToken=$continuationToken, groupBy=$groupBy, maxCompleteDate=$maxCompleteDate, releaseEnvDefinitionId=$releaseEnvDefinitionId, resultsForGroup=$resultsForGroup, testCaseId=$testCaseId, trendDays=$trendDays, ]';
  }

  TestHistoryQuery.fromJson(Map<String, dynamic> json) {
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
    if (json['buildDefinitionId'] == null) {
      buildDefinitionId = null;
    } else {
          buildDefinitionId = json['buildDefinitionId'];
    }
    if (json['continuationToken'] == null) {
      continuationToken = null;
    } else {
          continuationToken = json['continuationToken'];
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
    if (json['releaseEnvDefinitionId'] == null) {
      releaseEnvDefinitionId = null;
    } else {
          releaseEnvDefinitionId = json['releaseEnvDefinitionId'];
    }
    if (json['resultsForGroup'] == null) {
      resultsForGroup = null;
    } else {
      resultsForGroup = TestResultHistoryForGroup.listFromJson(json['resultsForGroup']);
    }
    if (json['testCaseId'] == null) {
      testCaseId = null;
    } else {
          testCaseId = json['testCaseId'];
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
    if (buildDefinitionId != null)
      json['buildDefinitionId'] = buildDefinitionId;
    if (continuationToken != null)
      json['continuationToken'] = continuationToken;
    if (groupBy != null)
      json['groupBy'] = groupBy;
    if (maxCompleteDate != null)
      json['maxCompleteDate'] = maxCompleteDate == null ? null : maxCompleteDate.toUtc().toIso8601String();
    if (releaseEnvDefinitionId != null)
      json['releaseEnvDefinitionId'] = releaseEnvDefinitionId;
    if (resultsForGroup != null)
      json['resultsForGroup'] = resultsForGroup;
    if (testCaseId != null)
      json['testCaseId'] = testCaseId;
    if (trendDays != null)
      json['trendDays'] = trendDays;
    return json;
  }

  static List<TestHistoryQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<TestHistoryQuery>() : json.map((value) => TestHistoryQuery.fromJson(value)).toList();
  }

  static Map<String, TestHistoryQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestHistoryQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestHistoryQuery.fromJson(value));
    }
    return map;
  }
}

