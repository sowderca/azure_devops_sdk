import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ReleasesApi
void main() {
  var instance = ReleasesApi();

  group('tests for ReleasesApi', () {
    // Create a release.
    //
    //Future<Release> create(String organization, String project, String apiVersion, ReleaseStartMetadata body) async 
    test('test create', () async {
      // TODO
    });

    // Get logs for a release Id.
    //
    //Future<String> get Logs(String organization, String project, int releaseId, String apiVersion) async 
    test('test get Logs', () async {
      // TODO
    });

    // Get a release environment.
    //
    //Future<ReleaseEnvironment> get Release Environment(String organization, String project, int releaseId, int environmentId, String apiVersion) async 
    test('test get Release Environment', () async {
      // TODO
    });

    // Get release for a given revision number.
    //
    //Future<String> get Release Revision(String organization, String project, int releaseId, int definitionSnapshotRevision, String apiVersion) async 
    test('test get Release Revision', () async {
      // TODO
    });

    // Gets the task log of a release as a plain text file.
    //
    //Future<String> get Task Log(String organization, String project, int releaseId, int environmentId, int releaseDeployPhaseId, int taskId, String apiVersion, { int startLine, int endLine }) async 
    test('test get Task Log', () async {
      // TODO
    });

    // Get a list of releases
    //
    //Future<List<Release>> list(String organization, String project, String apiVersion, { int definitionId, int definitionEnvironmentId, String searchText, String createdBy, String statusFilter, int environmentStatusFilter, DateTime minCreatedTime, DateTime maxCreatedTime, String queryOrder, int $top, int continuationToken, String $expand, String artifactTypeId, String sourceId, String artifactVersionId, String sourceBranchFilter, bool isDeleted, String tagFilter, String propertyFilters, String releaseIdFilter, String path }) async 
    test('test list', () async {
      // TODO
    });

    // Update a complete release object.
    //
    //Future<Release> update Release(String organization, String project, int releaseId, String apiVersion, Release body) async 
    test('test update Release', () async {
      // TODO
    });

    // Update the status of a release environment
    //
    //Future<ReleaseEnvironment> update Release Environment(String organization, String project, int releaseId, int environmentId, String apiVersion, ReleaseEnvironmentUpdateMetadata body) async 
    test('test update Release Environment', () async {
      // TODO
    });

    // Update few properties of a release.
    //
    //Future<Release> update Release Resource(String organization, String project, int releaseId, String apiVersion, ReleaseUpdateMetadata body) async 
    test('test update Release Resource', () async {
      // TODO
    });

  });
}
