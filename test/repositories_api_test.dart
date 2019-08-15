import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for RepositoriesApi
void main() {
  var instance = RepositoriesApi();

  group('tests for RepositoriesApi', () {
    // Create a git repository in a team project.
    //
    //Future<GitRepository> create(String organization, String project, String apiVersion, GitRepositoryCreateOptions body, { String sourceRef }) async 
    test('test create', () async {
      // TODO
    });

    // Delete a git repository
    //
    //Future delete(String organization, String repositoryId, String project, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Destroy (hard delete) a soft-deleted Git repository.
    //
    //Future delete Repository From Recycle Bin(String organization, String project, String repositoryId, String apiVersion) async 
    test('test delete Repository From Recycle Bin', () async {
      // TODO
    });

    // Retrieve deleted git repositories.
    //
    //Future<List<GitDeletedRepository>> get Deleted Repositories(String organization, String project, String apiVersion) async 
    test('test get Deleted Repositories', () async {
      // TODO
    });

    // Retrieve soft-deleted git repositories from the recycle bin.
    //
    //Future<List<GitDeletedRepository>> get Recycle Bin Repositories(String organization, String project, String apiVersion) async 
    test('test get Recycle Bin Repositories', () async {
      // TODO
    });

    // Retrieve a git repository.
    //
    //Future<GitRepository> get Repository(String organization, String repositoryId, String project, String apiVersion) async 
    test('test get Repository', () async {
      // TODO
    });

    // Retrieve git repositories.
    //
    //Future<List<GitRepository>> list(String organization, String project, String apiVersion, { bool includeLinks, bool includeAllUrls, bool includeHidden }) async 
    test('test list', () async {
      // TODO
    });

    // Recover a soft-deleted Git repository. Recently deleted repositories go into a soft-delete state for a period of time before they are hard deleted and become unrecoverable.
    //
    //Future<GitRepository> restore Repository From Recycle Bin(String organization, String project, String repositoryId, String apiVersion, GitRecycleBinRepositoryDetails body) async 
    test('test restore Repository From Recycle Bin', () async {
      // TODO
    });

    // Updates the Git repository with either a new repo name or a new default branch.
    //
    //Future<GitRepository> update(String organization, String repositoryId, String project, String apiVersion, GitRepository body) async 
    test('test update', () async {
      // TODO
    });

  });
}
