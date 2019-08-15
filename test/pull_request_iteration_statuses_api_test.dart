import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PullRequestIterationStatusesApi
void main() {
  var instance = PullRequestIterationStatusesApi();

  group('tests for PullRequestIterationStatusesApi', () {
    // Get the specific pull request iteration status by ID. The status ID is unique within the pull request across all iterations.
    //
    //Future<GitPullRequestStatus> callGet(String organization, String repositoryId, int pullRequestId, int iterationId, int statusId, String project, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Create a pull request status on the iteration. This operation will have the same result as Create status on pull request with specified iteration ID in the request body.  The only required field for the status is `Context.Name` that uniquely identifies the status. Note that `iterationId` in the request body is optional since `iterationId` can be specified in the URL. A conflict between `iterationId` in the URL and `iterationId` in the request body will result in status code 400.
    //
    //Future<GitPullRequestStatus> create(String organization, String repositoryId, int pullRequestId, int iterationId, String project, String apiVersion, GitPullRequestStatus body) async 
    test('test create', () async {
      // TODO
    });

    // Delete pull request iteration status.  You can remove multiple statuses in one call by using Update operation.
    //
    //Future delete(String organization, String repositoryId, int pullRequestId, int iterationId, int statusId, String project, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get all the statuses associated with a pull request iteration.
    //
    //Future<List<GitPullRequestStatus>> list(String organization, String repositoryId, int pullRequestId, int iterationId, String project, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Update pull request iteration statuses collection. The only supported operation type is `remove`.  This operation allows to delete multiple statuses in one call. The path of the `remove` operation should refer to the ID of the pull request status. For example `path=\"/1\"` refers to the pull request status with ID 1.
    //
    //Future update(String organization, String repositoryId, int pullRequestId, int iterationId, String project, String apiVersion, JsonPatchDocument body) async 
    test('test update', () async {
      // TODO
    });

  });
}
