import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PushesApi
void main() {
  var instance = PushesApi();

  group('tests for PushesApi', () {
    // Retrieves a particular push.
    //
    //Future<GitPush> callGet(String organization, String repositoryId, int pushId, String project, String apiVersion, { int includeCommits, bool includeRefUpdates }) async 
    test('test callGet', () async {
      // TODO
    });

    // Push changes to the repository.
    //
    //Future<GitPush> create(String organization, String repositoryId, String project, String apiVersion, GitPush body) async 
    test('test create', () async {
      // TODO
    });

    // Retrieves pushes associated with the specified repository.
    //
    //Future<List<GitPush>> list(String organization, String repositoryId, String project, String apiVersion, { int $skip, int $top, bool searchCriteriaIncludeLinks, bool searchCriteriaIncludeRefUpdates, String searchCriteriaRefName, String searchCriteriaPusherId, DateTime searchCriteriaToDate, DateTime searchCriteriaFromDate }) async 
    test('test list', () async {
      // TODO
    });

  });
}
