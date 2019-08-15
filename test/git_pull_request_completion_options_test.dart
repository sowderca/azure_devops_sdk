import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GitPullRequestCompletionOptions
void main() {
  var instance = GitPullRequestCompletionOptions();

  group('test GitPullRequestCompletionOptions', () {
    // If true, policies will be explicitly bypassed while the pull request is completed.
    // bool bypassPolicy (default value: null)
    test('to test the property `bypassPolicy`', () async {
      // TODO
    });

    // If policies are bypassed, this reason is stored as to why bypass was used.
    // String bypassReason (default value: null)
    test('to test the property `bypassReason`', () async {
      // TODO
    });

    // If true, the source branch of the pull request will be deleted after completion.
    // bool deleteSourceBranch (default value: null)
    test('to test the property `deleteSourceBranch`', () async {
      // TODO
    });

    // If set, this will be used as the commit message of the merge commit.
    // String mergeCommitMessage (default value: null)
    test('to test the property `mergeCommitMessage`', () async {
      // TODO
    });

    // Specify the strategy used to merge the pull request during completion. If MergeStrategy is not set to any value, a no-FF merge will be created if SquashMerge == false. If MergeStrategy is not set to any value, the pull request commits will be squash if SquashMerge == true. The SquashMerge member is deprecated. It is recommended that you explicitly set MergeStrategy in all cases. If an explicit value is provided for MergeStrategy, the SquashMerge member will be ignored.
    // String mergeStrategy (default value: null)
    test('to test the property `mergeStrategy`', () async {
      // TODO
    });

    // SquashMerge is deprecated. You should explicity set the value of MergeStrategy. If MergeStrategy is set to any value, the SquashMerge value will be ignored. If MergeStrategy is not set, the merge strategy will be no-fast-forward if this flag is false, or squash if true.
    // bool squashMerge (default value: null)
    test('to test the property `squashMerge`', () async {
      // TODO
    });

    // If true, we will attempt to transition any work items linked to the pull request into the next logical state (i.e. Active -> Resolved)
    // bool transitionWorkItems (default value: null)
    test('to test the property `transitionWorkItems`', () async {
      // TODO
    });

    // If true, the current completion attempt was triggered via auto-complete. Used internally.
    // bool triggeredByAutoComplete (default value: null)
    test('to test the property `triggeredByAutoComplete`', () async {
      // TODO
    });


  });

}
