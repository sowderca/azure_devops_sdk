import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for BuildsApi
void main() {
  var instance = BuildsApi();

  group('tests for BuildsApi', () {
    // Gets a build
    //
    //Future<Build> callGet(String organization, String project, int buildId, String apiVersion, { String propertyFilters }) async 
    test('test callGet', () async {
      // TODO
    });

    // Deletes a build.
    //
    //Future delete(String organization, String project, int buildId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Gets the changes associated with a build
    //
    //Future<List<Change>> get Build Changes(String organization, String project, int buildId, String apiVersion, { String continuationToken, int $top, bool includeSourceChange }) async 
    test('test get Build Changes', () async {
      // TODO
    });

    // Gets an individual log file for a build.
    //
    //Future<String> get Build Log(String organization, String project, int buildId, int logId, String apiVersion, { int startLine, int endLine }) async 
    test('test get Build Log', () async {
      // TODO
    });

    // Gets the logs for a build.
    //
    //Future<List<BuildLog>> get Build Logs(String organization, String project, int buildId, String apiVersion) async 
    test('test get Build Logs', () async {
      // TODO
    });

    // Gets the work items associated with a build.
    //
    //Future<List<ResourceRef>> get Build Work Items Refs(String organization, String project, int buildId, String apiVersion, { int $top }) async 
    test('test get Build Work Items Refs', () async {
      // TODO
    });

    // Gets the work items associated with a build, filtered to specific commits.
    //
    //Future<List<ResourceRef>> get Build Work Items Refs From Commits(String organization, String project, int buildId, String apiVersion, List<String> body, { int $top }) async 
    test('test get Build Work Items Refs From Commits', () async {
      // TODO
    });

    // Gets the changes made to the repository between two given builds.
    //
    //Future<List<Change>> get Changes Between Builds(String organization, String project, String apiVersion, { int fromBuildId, int toBuildId, int $top }) async 
    test('test get Changes Between Builds', () async {
      // TODO
    });

    // Gets all the work items between two builds.
    //
    //Future<List<ResourceRef>> get Work Items Between Builds(String organization, String project, int fromBuildId, int toBuildId, String apiVersion, { int $top }) async 
    test('test get Work Items Between Builds', () async {
      // TODO
    });

    // Gets a list of builds.
    //
    //Future<List<Build>> list(String organization, String project, String apiVersion, { String definitions, String queues, String buildNumber, DateTime minTime, DateTime maxTime, String requestedFor, String reasonFilter, String statusFilter, String resultFilter, String tagFilters, String properties, int $top, String continuationToken, int maxBuildsPerDefinition, String deletedFilter, String queryOrder, String branchName, String buildIds, String repositoryId, String repositoryType }) async 
    test('test list', () async {
      // TODO
    });

    // Queues a build
    //
    //Future<Build> queue(String organization, String project, String apiVersion, Build body, { bool ignoreWarnings, String checkInTicket, int sourceBuildId }) async 
    test('test queue', () async {
      // TODO
    });

    // Updates a build.
    //
    //Future<Build> update Build(String organization, String project, int buildId, String apiVersion, Build body, { bool retry }) async 
    test('test update Build', () async {
      // TODO
    });

    // Updates multiple builds.
    //
    //Future<List<Build>> update Builds(String organization, String project, String apiVersion, List<Build> body) async 
    test('test update Builds', () async {
      // TODO
    });

  });
}
