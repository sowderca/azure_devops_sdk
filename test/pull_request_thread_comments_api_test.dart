import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PullRequestThreadCommentsApi
void main() {
  var instance = PullRequestThreadCommentsApi();

  group('tests for PullRequestThreadCommentsApi', () {
    // Retrieve a comment associated with a specific thread in a pull request.
    //
    //Future<Comment> callGet(String organization, String repositoryId, int pullRequestId, int threadId, int commentId, String project, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Create a comment on a specific thread in a pull request (up to 500 comments can be created per thread).
    //
    //Future<Comment> create(String organization, String repositoryId, int pullRequestId, int threadId, String project, String apiVersion, Comment body) async 
    test('test create', () async {
      // TODO
    });

    // Delete a comment associated with a specific thread in a pull request.
    //
    //Future delete(String organization, String repositoryId, int pullRequestId, int threadId, int commentId, String project, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Retrieve all comments associated with a specific thread in a pull request.
    //
    //Future<List<Comment>> list(String organization, String repositoryId, int pullRequestId, int threadId, String project, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Update a comment associated with a specific thread in a pull request.
    //
    //Future<Comment> update(String organization, String repositoryId, int pullRequestId, int threadId, int commentId, String project, String apiVersion, Comment body) async 
    test('test update', () async {
      // TODO
    });

  });
}
