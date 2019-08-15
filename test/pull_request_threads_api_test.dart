import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PullRequestThreadsApi
void main() {
  var instance = PullRequestThreadsApi();

  group('tests for PullRequestThreadsApi', () {
    // Retrieve a thread in a pull request.
    //
    //Future<GitPullRequestCommentThread> callGet(String organization, String repositoryId, int pullRequestId, int threadId, String project, String apiVersion, { int $iteration, int $baseIteration }) async 
    test('test callGet', () async {
      // TODO
    });

    // Create a thread in a pull request.
    //
    //Future<GitPullRequestCommentThread> create(String organization, String repositoryId, int pullRequestId, String project, String apiVersion, GitPullRequestCommentThread body) async 
    test('test create', () async {
      // TODO
    });

    // Retrieve all threads in a pull request.
    //
    //Future<List<GitPullRequestCommentThread>> list(String organization, String repositoryId, int pullRequestId, String project, String apiVersion, { int $iteration, int $baseIteration }) async 
    test('test list', () async {
      // TODO
    });

    // Update a thread in a pull request.
    //
    //Future<GitPullRequestCommentThread> update(String organization, String repositoryId, int pullRequestId, int threadId, String project, String apiVersion, GitPullRequestCommentThread body) async 
    test('test update', () async {
      // TODO
    });

  });
}
