import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for MergesApi
void main() {
  var instance = MergesApi();

  group('tests for MergesApi', () {
    // Get a specific merge operation's details.
    //
    //Future<GitMerge> callGet(String organization, String project, String repositoryNameOrId, int mergeOperationId, String apiVersion, { bool includeLinks }) async 
    test('test callGet', () async {
      // TODO
    });

    // Request a git merge operation. Currently we support merging only 2 commits.
    //
    //Future<GitMerge> create(String organization, String project, String repositoryNameOrId, String apiVersion, GitMergeParameters body, { bool includeLinks }) async 
    test('test create', () async {
      // TODO
    });

  });
}
