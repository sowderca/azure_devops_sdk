import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for CherryPicksApi
void main() {
  var instance = CherryPicksApi();

  group('tests for CherryPicksApi', () {
    // Cherry pick a specific commit or commits that are associated to a pull request into a new branch.
    //
    //Future<GitCherryPick> create(String organization, String project, String repositoryId, String apiVersion, GitAsyncRefOperationParameters body) async 
    test('test create', () async {
      // TODO
    });

    // Retrieve information about a cherry pick by cherry pick Id.
    //
    //Future<GitCherryPick> get Cherry Pick(String organization, String project, int cherryPickId, String repositoryId, String apiVersion) async 
    test('test get Cherry Pick', () async {
      // TODO
    });

    // Retrieve information about a cherry pick for a specific branch.
    //
    //Future<GitCherryPick> get Cherry Pick For Ref Name(String organization, String project, String repositoryId, String refName, String apiVersion) async 
    test('test get Cherry Pick For Ref Name', () async {
      // TODO
    });

  });
}
