import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for StatusesApi
void main() {
  var instance = StatusesApi();

  group('tests for StatusesApi', () {
    // Create Git commit status.
    //
    //Future<GitStatus> create(String organization, String commitId, String repositoryId, String project, String apiVersion, GitStatus body) async 
    test('test create', () async {
      // TODO
    });

    // Get statuses associated with the Git commit.
    //
    //Future<List<GitStatus>> list(String organization, String commitId, String repositoryId, String project, String apiVersion, { int top, int skip, bool latestOnly }) async 
    test('test list', () async {
      // TODO
    });

  });
}
