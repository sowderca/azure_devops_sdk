import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PullRequestCommentLikesApi
void main() {
  var instance = PullRequestCommentLikesApi();

  group('tests for PullRequestCommentLikesApi', () {
    // Add a like on a comment.
    //
    //Future create(String organization, String repositoryId, int pullRequestId, int threadId, int commentId, String project, String apiVersion) async 
    test('test create', () async {
      // TODO
    });

    // Delete a like on a comment.
    //
    //Future delete(String organization, String repositoryId, int pullRequestId, int threadId, int commentId, String project, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get likes for a comment.
    //
    //Future<List<IdentityRef>> list(String organization, String repositoryId, int pullRequestId, int threadId, int commentId, String project, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

  });
}
