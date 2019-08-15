import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for DiffsApi
void main() {
  var instance = DiffsApi();

  group('tests for DiffsApi', () {
    // Find the closest common commit (the merge base) between base and target commits, and get the diff between either the base and target commits or common and target commits.
    //
    //Future<GitCommitDiffs> callGet(String organization, String repositoryId, String project, String apiVersion, { bool diffCommonCommit, int $top, int $skip, String baseVersionOptions, String baseVersion, String baseVersionType, String targetVersionOptions, String targetVersion, String targetVersionType }) async 
    test('test callGet', () async {
      // TODO
    });

  });
}
