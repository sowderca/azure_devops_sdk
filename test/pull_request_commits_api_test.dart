import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PullRequestCommitsApi
void main() {
  var instance = PullRequestCommitsApi();

  group('tests for PullRequestCommitsApi', () {
    // Get the commits for the specified pull request.
    //
    //Future<List<GitCommitRef>> get Pull Request Commits(String organization, String repositoryId, int pullRequestId, String project, String apiVersion) async 
    test('test get Pull Request Commits', () async {
      // TODO
    });

    // Get the commits for the specified iteration of a pull request.
    //
    //Future<List<GitCommitRef>> get Pull Request Iteration Commits(String organization, String repositoryId, int pullRequestId, int iterationId, String project, String apiVersion, { int top, int skip }) async 
    test('test get Pull Request Iteration Commits', () async {
      // TODO
    });

  });
}
