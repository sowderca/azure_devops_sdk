import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PullRequestPropertiesApi
void main() {
  var instance = PullRequestPropertiesApi();

  group('tests for PullRequestPropertiesApi', () {
    // Get external properties of the pull request.
    //
    //Future<PropertiesCollection> list(String organization, String repositoryId, int pullRequestId, String project, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Create or update pull request external properties. The patch operation can be `add`, `replace` or `remove`. For `add` operation, the path can be empty. If the path is empty, the value must be a list of key value pairs. For `replace` operation, the path cannot be empty. If the path does not exist, the property will be added to the collection. For `remove` operation, the path cannot be empty. If the path does not exist, no action will be performed.
    //
    //Future<PropertiesCollection> update(String organization, String repositoryId, int pullRequestId, String project, String apiVersion, JsonPatchDocument body) async 
    test('test update', () async {
      // TODO
    });

  });
}
