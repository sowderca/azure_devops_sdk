import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for TestRunsApi
void main() {
  var instance = TestRunsApi();

  group('tests for TestRunsApi', () {
    //Future<TestRun> create(String organization, String apiVersion, TestRun body) async 
    test('test create', () async {
      // TODO
    });

    //Future<TestRun> get Test Run(String organization, String testRunId, String apiVersion) async 
    test('test get Test Run', () async {
      // TODO
    });

    // Returns test runs based on the filter specified. Returns all runs of the tenant if there is no filter.
    //
    //Future<Object> get Test Runs(String organization, String apiVersion, { String name, String requestedBy, String status, String runType, String fromDate, String toDate, bool detailed, int top, String runsourceidentifier, String retentionState }) async 
    test('test get Test Runs', () async {
      // TODO
    });

    //Future update(String organization, String testRunId, String apiVersion, TestRun body) async 
    test('test update', () async {
      // TODO
    });

  });
}
