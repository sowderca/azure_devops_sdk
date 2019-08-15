import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for IterationsApi
void main() {
  var instance = IterationsApi();

  group('tests for IterationsApi', () {
    // Get iteration for a result
    //
    //Future<TestIterationDetailsModel> callGet(String organization, String project, int runId, int testCaseResultId, int iterationId, String apiVersion, { bool includeActionResults }) async 
    test('test callGet', () async {
      // TODO
    });

    // Get team's iteration by iterationId
    //
    //Future<TeamSettingsIteration> callGet_0(String organization, String project, String id, String team, String apiVersion) async 
    test('test callGet_0', () async {
      // TODO
    });

    // Delete a team's iteration by iterationId
    //
    //Future delete(String organization, String project, String id, String team, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get work items for iteration
    //
    //Future<IterationWorkItems> get Iteration Work Items(String organization, String project, String iterationId, String team, String apiVersion) async 
    test('test get Iteration Work Items', () async {
      // TODO
    });

    // Get iterations for a result
    //
    //Future<List<TestIterationDetailsModel>> list(String organization, String project, int runId, int testCaseResultId, String apiVersion, { bool includeActionResults }) async 
    test('test list', () async {
      // TODO
    });

    // Get a team's iterations using timeframe filter
    //
    //Future<List<TeamSettingsIteration>> list_0(String organization, String project, String team, String apiVersion, { String $timeframe }) async 
    test('test list_0', () async {
      // TODO
    });

    // Add an iteration to the team
    //
    //Future<TeamSettingsIteration> post Team Iteration(String organization, String project, String team, String apiVersion, TeamSettingsIteration body) async 
    test('test post Team Iteration', () async {
      // TODO
    });

  });
}
