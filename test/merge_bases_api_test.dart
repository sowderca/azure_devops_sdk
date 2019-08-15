import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for MergeBasesApi
void main() {
  var instance = MergeBasesApi();

  group('tests for MergeBasesApi', () {
    // Find the merge bases of two commits, optionally across forks. If otherRepositoryId is not specified, the merge bases will only be calculated within the context of the local repositoryNameOrId.
    //
    //Future<List<GitCommitRef>> list(String organization, String repositoryNameOrId, String commitId, String otherCommitId, String project, String apiVersion, { String otherCollectionId, String otherRepositoryId }) async 
    test('test list', () async {
      // TODO
    });

  });
}
