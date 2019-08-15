import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for CodeCoverageApi
void main() {
  var instance = CodeCoverageApi();

  group('tests for CodeCoverageApi', () {
    // Get code coverage data for a build.
    //
    //Future<List<BuildCoverage>> get Build Code Coverage(String organization, String project, int buildId, int flags, String apiVersion) async 
    test('test get Build Code Coverage', () async {
      // TODO
    });

    // Get code coverage data for a test run
    //
    //Future<List<TestRunCoverage>> get Test Run Code Coverage(String organization, String project, int runId, int flags, String apiVersion) async 
    test('test get Test Run Code Coverage', () async {
      // TODO
    });

  });
}
