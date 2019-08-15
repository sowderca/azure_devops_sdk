import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for CommentsApi
void main() {
  var instance = CommentsApi();

  group('tests for CommentsApi', () {
    // Add a comment on a work item.
    //
    //Future<Comment> add(String organization, String project, int workItemId, String apiVersion, CommentCreate body) async 
    test('test add', () async {
      // TODO
    });

    // Delete a comment on a work item.
    //
    //Future delete(String organization, String project, int workItemId, int commentId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Returns a work item comment.
    //
    //Future<Comment> get Comment(String organization, String project, int workItemId, int commentId, String apiVersion, { bool includeDeleted, String $expand }) async 
    test('test get Comment', () async {
      // TODO
    });

    // Returns a list of work item comments by ids.
    //
    //Future<CommentList> get Comments Batch(String organization, String project, int workItemId, String ids, String apiVersion, { bool includeDeleted, String $expand }) async 
    test('test get Comments Batch', () async {
      // TODO
    });

    // Update a comment on a work item.
    //
    //Future<Comment> update(String organization, String project, int workItemId, int commentId, String apiVersion, CommentUpdate body) async 
    test('test update', () async {
      // TODO
    });

  });
}
