import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for RevertsApi
void main() {
  var instance = RevertsApi();

  group('tests for RevertsApi', () {
    // Starts the operation to create a new branch which reverts changes introduced by either a specific commit or commits that are associated to a pull request.
    //
    //Future<GitRevert> create(String organization, String project, String repositoryId, String apiVersion, GitAsyncRefOperationParameters body) async 
    test('test create', () async {
      // TODO
    });

    // Retrieve information about a revert operation by revert Id.
    //
    //Future<GitRevert> get Revert(String organization, String project, int revertId, String repositoryId, String apiVersion) async 
    test('test get Revert', () async {
      // TODO
    });

    // Retrieve information about a revert operation for a specific branch.
    //
    //Future<GitRevert> get Revert For Ref Name(String organization, String project, String repositoryId, String refName, String apiVersion) async 
    test('test get Revert For Ref Name', () async {
      // TODO
    });

  });
}
