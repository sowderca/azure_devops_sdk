import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ForksApi
void main() {
  var instance = ForksApi();

  group('tests for ForksApi', () {
    // Request that another repository's refs be fetched into this one. It syncs two existing forks. To create a fork, please see the <a href=\"https://docs.microsoft.com/en-us/rest/api/vsts/git/repositories/create?view=azure-devops-rest-5.1\"> repositories endpoint</a>
    //
    //Future<GitForkSyncRequest> create fork sync request(String organization, String repositoryNameOrId, String project, String apiVersion, GitForkSyncRequestParameters body, { bool includeLinks }) async 
    test('test create fork sync request', () async {
      // TODO
    });

    // Retrieve all requested fork sync operations on this repository.
    //
    //Future<List<GitForkSyncRequest>> get Fork Sync Requests(String organization, String repositoryNameOrId, String project, String apiVersion, { bool includeAbandoned, bool includeLinks }) async 
    test('test get Fork Sync Requests', () async {
      // TODO
    });

    // Get a specific fork sync operation's details.
    //
    //Future<GitForkSyncRequest> get fork sync request(String organization, String repositoryNameOrId, int forkSyncOperationId, String project, String apiVersion, { bool includeLinks }) async 
    test('test get fork sync request', () async {
      // TODO
    });

    // Retrieve all forks of a repository in the collection.
    //
    //Future<List<GitRepositoryRef>> list(String organization, String repositoryNameOrId, String collectionId, String project, String apiVersion, { bool includeLinks }) async 
    test('test list', () async {
      // TODO
    });

  });
}
