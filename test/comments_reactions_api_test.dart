import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for CommentsReactionsApi
void main() {
  var instance = CommentsReactionsApi();

  group('tests for CommentsReactionsApi', () {
    // Adds a new reaction to a comment.
    //
    //Future<CommentReaction> create(String organization, String project, int workItemId, int commentId, String reactionType, String apiVersion) async 
    test('test create', () async {
      // TODO
    });

    // Deletes an existing reaction on a comment.
    //
    //Future<CommentReaction> delete(String organization, String project, int workItemId, int commentId, String reactionType, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Gets reactions of a comment.
    //
    //Future<List<CommentReaction>> list(String organization, String project, int workItemId, int commentId, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

  });
}
