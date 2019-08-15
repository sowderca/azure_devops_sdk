import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for SourceProvidersApi
void main() {
  var instance = SourceProvidersApi();

  group('tests for SourceProvidersApi', () {
    // Gets the contents of a file in the given source code repository.
    //
    //Future<String> get File Contents(String organization, String project, String providerName, String apiVersion, { String serviceEndpointId, String repository, String commitOrBranch, String path }) async 
    test('test get File Contents', () async {
      // TODO
    });

    // Gets the contents of a directory in the given source code repository.
    //
    //Future<List<SourceRepositoryItem>> get Path Contents(String organization, String project, String providerName, String apiVersion, { String serviceEndpointId, String repository, String commitOrBranch, String path }) async 
    test('test get Path Contents', () async {
      // TODO
    });

    // Gets a pull request object from source provider.
    //
    //Future<PullRequest> get Pull Request(String organization, String project, String providerName, String pullRequestId, String apiVersion, { String repositoryId, String serviceEndpointId }) async 
    test('test get Pull Request', () async {
      // TODO
    });

    // Get a list of source providers and their capabilities.
    //
    //Future<List<SourceProviderAttributes>> list(String organization, String project, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Gets a list of branches for the given source code repository.
    //
    //Future<List<String>> list Branches(String organization, String project, String providerName, String apiVersion, { String serviceEndpointId, String repository, String branchName }) async 
    test('test list Branches', () async {
      // TODO
    });

    // Gets a list of source code repositories.
    //
    //Future<SourceRepositories> list Repositories(String organization, String project, String providerName, String apiVersion, { String serviceEndpointId, String repository, String resultSet, bool pageResults, String continuationToken }) async 
    test('test list Repositories', () async {
      // TODO
    });

    // Gets a list of webhooks installed in the given source code repository.
    //
    //Future<List<RepositoryWebhook>> list Webhooks(String organization, String project, String providerName, String apiVersion, { String serviceEndpointId, String repository }) async 
    test('test list Webhooks', () async {
      // TODO
    });

    // Recreates the webhooks for the specified triggers in the given source code repository.
    //
    //Future restore Webhooks(String organization, String project, String providerName, String apiVersion, List<String> body, { String serviceEndpointId, String repository }) async 
    test('test restore Webhooks', () async {
      // TODO
    });

  });
}
