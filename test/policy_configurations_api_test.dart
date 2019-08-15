import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PolicyConfigurationsApi
void main() {
  var instance = PolicyConfigurationsApi();

  group('tests for PolicyConfigurationsApi', () {
    // Retrieve a list of policy configurations by a given set of scope/filtering criteria.  Below is a short description of how all of the query parameters interact with each other: - repositoryId set, refName set: returns all policy configurations that *apply* to a particular branch in a repository - repositoryId set, refName unset: returns all policy configurations that *apply* to a particular repository - repositoryId unset, refName unset: returns all policy configurations that are *defined* at the project level - repositoryId unset, refName set: returns all project-level branch policies, plus the project level configurations For all of the examples above, when policyType is set, it'll restrict results to the given policy type
    //
    //Future<List<PolicyConfiguration>> callGet(String organization, String project, String apiVersion, { String repositoryId, String refName, String policyType, int $top, String continuationToken }) async 
    test('test callGet', () async {
      // TODO
    });

  });
}
