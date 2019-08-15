import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for RevisionsApi
void main() {
  var instance = RevisionsApi();

  group('tests for RevisionsApi', () {
    // Retrieve a specific revision of a given policy by ID.
    //
    //Future<PolicyConfiguration> callGet(String organization, String project, int configurationId, int revisionId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Returns a fully hydrated work item for the requested revision
    //
    //Future<WorkItem> callGet_0(String organization, int id, int revisionNumber, String project, String apiVersion, { String $expand }) async 
    test('test callGet_0', () async {
      // TODO
    });

    // Retrieve all revisions for a given policy.
    //
    //Future<List<PolicyConfiguration>> list(String organization, String project, int configurationId, String apiVersion, { int $top, int $skip }) async 
    test('test list', () async {
      // TODO
    });

    // Returns the list of fully hydrated work item revisions, paged.
    //
    //Future<List<WorkItem>> list_0(String organization, int id, String project, String apiVersion, { int $top, int $skip, String $expand }) async 
    test('test list_0', () async {
      // TODO
    });

  });
}
