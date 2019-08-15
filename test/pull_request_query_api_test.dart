import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PullRequestQueryApi
void main() {
  var instance = PullRequestQueryApi();

  group('tests for PullRequestQueryApi', () {
    // This API is used to find what pull requests are related to a given commit.  It can be used to either find the pull request that created a particular merge commit or it can be used to find all pull requests that have ever merged a particular commit.  The input is a list of queries which each contain a list of commits. For each commit that you search against, you will get back a dictionary of commit -> pull requests.
    //
    //Future<GitPullRequestQuery> callGet(String organization, String repositoryId, String project, String apiVersion, GitPullRequestQuery body) async 
    test('test callGet', () async {
      // TODO
    });

  });
}
