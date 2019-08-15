import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PullRequestLabelsApi
void main() {
  var instance = PullRequestLabelsApi();

  group('tests for PullRequestLabelsApi', () {
    // Retrieves a single label that has been assigned to a pull request.
    //
    //Future<WebApiTagDefinition> callGet(String organization, String repositoryId, int pullRequestId, String labelIdOrName, String project, String apiVersion, { String projectId }) async 
    test('test callGet', () async {
      // TODO
    });

    // Create a label for a specified pull request. The only required field is the name of the new label.
    //
    //Future<WebApiTagDefinition> create(String organization, String repositoryId, int pullRequestId, String project, String apiVersion, WebApiCreateTagRequestData body, { String projectId }) async 
    test('test create', () async {
      // TODO
    });

    // Removes a label from the set of those assigned to the pull request.
    //
    //Future delete(String organization, String repositoryId, int pullRequestId, String labelIdOrName, String project, String apiVersion, { String projectId }) async 
    test('test delete', () async {
      // TODO
    });

    // Get all the labels assigned to a pull request.
    //
    //Future<List<WebApiTagDefinition>> list(String organization, String repositoryId, int pullRequestId, String project, String apiVersion, { String projectId }) async 
    test('test list', () async {
      // TODO
    });

  });
}
