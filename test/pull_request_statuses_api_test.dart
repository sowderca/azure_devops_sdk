import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PullRequestStatusesApi
void main() {
  var instance = PullRequestStatusesApi();

  group('tests for PullRequestStatusesApi', () {
    // Get the specific pull request status by ID. The status ID is unique within the pull request across all iterations.
    //
    //Future<GitPullRequestStatus> callGet(String organization, String repositoryId, int pullRequestId, int statusId, String project, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Create a pull request status.  The only required field for the status is `Context.Name` that uniquely identifies the status. Note that you can specify iterationId in the request body to post the status on the iteration.
    //
    //Future<GitPullRequestStatus> create(String organization, String repositoryId, int pullRequestId, String project, String apiVersion, GitPullRequestStatus body) async 
    test('test create', () async {
      // TODO
    });

    // Delete pull request status.  You can remove multiple statuses in one call by using Update operation.
    //
    //Future delete(String organization, String repositoryId, int pullRequestId, int statusId, String project, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get all the statuses associated with a pull request.
    //
    //Future<List<GitPullRequestStatus>> list(String organization, String repositoryId, int pullRequestId, String project, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Update pull request statuses collection. The only supported operation type is `remove`.  This operation allows to delete multiple statuses in one call. The path of the `remove` operation should refer to the ID of the pull request status. For example `path=\"/1\"` refers to the pull request status with ID 1.
    //
    //Future update(String organization, String repositoryId, int pullRequestId, String project, String apiVersion, JsonPatchDocument body) async 
    test('test update', () async {
      // TODO
    });

  });
}
