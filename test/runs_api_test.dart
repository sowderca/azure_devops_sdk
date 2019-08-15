import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for RunsApi
void main() {
  var instance = RunsApi();

  group('tests for RunsApi', () {
    // Create new test run.
    //
    //Future<TestRun> create(String organization, String project, String apiVersion, RunCreateModel body) async 
    test('test create', () async {
      // TODO
    });

    // Delete a test run by its ID.
    //
    //Future delete(String organization, String project, int runId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get a test run by its ID.
    //
    //Future<TestRun> get Test Run By Id(String organization, String project, int runId, String apiVersion, { bool includeDetails }) async 
    test('test get Test Run By Id', () async {
      // TODO
    });

    // Get test run statistics , used when we want to get summary of a run by outcome.
    //
    //Future<TestRunStatistic> get Test Run Statistics(String organization, String project, int runId, String apiVersion) async 
    test('test get Test Run Statistics', () async {
      // TODO
    });

    // Get a list of test runs.
    //
    //Future<List<TestRun>> list(String organization, String project, String apiVersion, { String buildUri, String owner, String tmiRunId, int planId, bool includeRunDetails, bool automated, int $skip, int $top }) async 
    test('test list', () async {
      // TODO
    });

    // Update test run by its ID.
    //
    //Future<TestRun> update(String organization, String project, int runId, String apiVersion, RunUpdateModel body) async 
    test('test update', () async {
      // TODO
    });

  });
}
