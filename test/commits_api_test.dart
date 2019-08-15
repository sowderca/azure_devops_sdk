import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for CommitsApi
void main() {
  var instance = CommitsApi();

  group('tests for CommitsApi', () {
    // Retrieve a particular commit.
    //
    //Future<GitCommit> callGet(String organization, String commitId, String repositoryId, String project, String apiVersion, { int changeCount }) async 
    test('test callGet', () async {
      // TODO
    });

    // Retrieve changes for a particular commit.
    //
    //Future<GitCommitChanges> get Changes(String organization, String commitId, String repositoryId, String project, String apiVersion, { int top, int skip }) async 
    test('test get Changes', () async {
      // TODO
    });

    // Retrieve git commits for a project matching the search criteria
    //
    //Future<List<GitCommitRef>> get Commits Batch(String organization, String repositoryId, String project, String apiVersion, GitQueryCommitsCriteria body, { int $skip, int $top, bool includeStatuses }) async 
    test('test get Commits Batch', () async {
      // TODO
    });

    // Retrieve a list of commits associated with a particular push.
    //
    //Future<List<GitCommitRef>> get Push Commits(String organization, String repositoryId, int pushId, String project, String apiVersion, { int top, int skip, bool includeLinks }) async 
    test('test get Push Commits', () async {
      // TODO
    });

  });
}
