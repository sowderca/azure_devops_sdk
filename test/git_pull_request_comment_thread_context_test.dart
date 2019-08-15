import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GitPullRequestCommentThreadContext
void main() {
  var instance = GitPullRequestCommentThreadContext();

  group('test GitPullRequestCommentThreadContext', () {
    // Used to track a comment across iterations. This value can be found by looking at the iteration's changes list. Must be set for pull requests with iteration support. Otherwise, it's not required for 'legacy' pull requests.
    // int changeTrackingId (default value: null)
    test('to test the property `changeTrackingId`', () async {
      // TODO
    });

    // CommentIterationContext iterationContext (default value: null)
    test('to test the property `iterationContext`', () async {
      // TODO
    });

    // CommentTrackingCriteria trackingCriteria (default value: null)
    test('to test the property `trackingCriteria`', () async {
      // TODO
    });


  });

}
