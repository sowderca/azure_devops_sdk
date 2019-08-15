import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ResultsApi
void main() {
  var instance = ResultsApi();

  group('tests for ResultsApi', () {
    // Add test results to a test run.
    //
    //Future<List<TestCaseResult>> add(String organization, String project, int runId, String apiVersion, List<TestCaseResult> body) async 
    test('test add', () async {
      // TODO
    });

    //Future<TestResults> callGet(String organization, String testRunId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Get a test result for a test run.
    //
    //Future<TestCaseResult> callGet_0(String organization, String project, int runId, int testCaseResultId, String apiVersion, { String detailsToInclude }) async 
    test('test callGet_0', () async {
      // TODO
    });

    // Get test results for a test run.
    //
    //Future<List<TestCaseResult>> list(String organization, String project, int runId, String apiVersion, { String detailsToInclude, int $skip, int $top, String outcomes }) async 
    test('test list', () async {
      // TODO
    });

    // Update test results in a test run.
    //
    //Future<List<TestCaseResult>> update(String organization, String project, int runId, String apiVersion, List<TestCaseResult> body) async 
    test('test update', () async {
      // TODO
    });

  });
}
