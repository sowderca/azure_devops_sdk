import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GitPullRequestQuery
void main() {
  var instance = GitPullRequestQuery();

  group('test GitPullRequestQuery', () {
    // The queries to perform.
    // List<GitPullRequestQueryInput> queries (default value: [])
    test('to test the property `queries`', () async {
      // TODO
    });

    // The results of the queries. This matches the QueryInputs list so Results[n] are the results of QueryInputs[n]. Each entry in the list is a dictionary of commit->pull requests.
    // List<Map<String, List<GitPullRequest>>> results (default value: [])
    test('to test the property `results`', () async {
      // TODO
    });


  });

}
