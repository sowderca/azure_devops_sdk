import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for SourcePullRequestVersion
void main() {
  var instance = SourcePullRequestVersion();

  group('test SourcePullRequestVersion', () {
    // Pull Request Iteration Id for which the release will publish status.
    // String iterationId (default value: null)
    test('to test the property `iterationId`', () async {
      // TODO
    });

    // Pull Request Id for which the release will publish status.
    // String pullRequestId (default value: null)
    test('to test the property `pullRequestId`', () async {
      // TODO
    });

    // Date and time of the pull request merge creation. It is required to keep timeline record of Releases created by pull request.
    // DateTime pullRequestMergedAt (default value: null)
    test('to test the property `pullRequestMergedAt`', () async {
      // TODO
    });

    // Source branch of the Pull Request.
    // String sourceBranch (default value: null)
    test('to test the property `sourceBranch`', () async {
      // TODO
    });

    // Source branch commit Id of the Pull Request for which the release will publish status.
    // String sourceBranchCommitId (default value: null)
    test('to test the property `sourceBranchCommitId`', () async {
      // TODO
    });

    // Target branch of the Pull Request.
    // String targetBranch (default value: null)
    test('to test the property `targetBranch`', () async {
      // TODO
    });


  });

}
