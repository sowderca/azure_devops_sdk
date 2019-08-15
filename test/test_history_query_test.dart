import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for TestHistoryQuery
void main() {
  var instance = TestHistoryQuery();

  group('test TestHistoryQuery', () {
    // Automated test name of the TestCase.
    // String automatedTestName (default value: null)
    test('to test the property `automatedTestName`', () async {
      // TODO
    });

    // Results to be get for a particular branches.
    // String branch (default value: null)
    test('to test the property `branch`', () async {
      // TODO
    });

    // Get the results history only for this BuildDefinitionId. This to get used in query GroupBy should be Branch. If this is provided, Branch will have no use.
    // int buildDefinitionId (default value: null)
    test('to test the property `buildDefinitionId`', () async {
      // TODO
    });

    // It will be filled by server. If not null means there are some results still to be get, and we need to call this REST API with this ContinuousToken. It is not supposed to be created (or altered, if received from server in last batch) by user.
    // String continuationToken (default value: null)
    test('to test the property `continuationToken`', () async {
      // TODO
    });

    // Group the result on the basis of TestResultGroupBy. This can be Branch, Environment or null(if results are fetched by BuildDefinitionId)
    // String groupBy (default value: null)
    test('to test the property `groupBy`', () async {
      // TODO
    });

    // History to get between time interval MaxCompleteDate and  (MaxCompleteDate - TrendDays). Default is current date time.
    // DateTime maxCompleteDate (default value: null)
    test('to test the property `maxCompleteDate`', () async {
      // TODO
    });

    // Get the results history only for this ReleaseEnvDefinitionId. This to get used in query GroupBy should be Environment.
    // int releaseEnvDefinitionId (default value: null)
    test('to test the property `releaseEnvDefinitionId`', () async {
      // TODO
    });

    // List of TestResultHistoryForGroup which are grouped by GroupBy
    // List<TestResultHistoryForGroup> resultsForGroup (default value: [])
    test('to test the property `resultsForGroup`', () async {
      // TODO
    });

    // Get the results history only for this testCaseId. This to get used in query to filter the result along with automatedtestname
    // int testCaseId (default value: null)
    test('to test the property `testCaseId`', () async {
      // TODO
    });

    // Number of days for which history to collect. Maximum supported value is 7 days. Default is 7 days.
    // int trendDays (default value: null)
    test('to test the property `trendDays`', () async {
      // TODO
    });


  });

}
