import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PullRequestIterationsApi
void main() {
  var instance = PullRequestIterationsApi();

  group('tests for PullRequestIterationsApi', () {
    // Get the specified iteration for a pull request.
    //
    //Future<GitPullRequestIteration> callGet(String organization, String repositoryId, int pullRequestId, int iterationId, String project, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Get the list of iterations for the specified pull request.
    //
    //Future<List<GitPullRequestIteration>> list(String organization, String repositoryId, int pullRequestId, String project, String apiVersion, { bool includeCommits }) async 
    test('test list', () async {
      // TODO
    });

  });
}
