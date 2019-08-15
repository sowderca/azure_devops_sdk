import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for Comment
void main() {
  var instance = Comment();

  group('test Comment', () {
    // ReferenceLinks links (default value: null)
    test('to test the property `links`', () async {
      // TODO
    });

    // IdentityRef author (default value: null)
    test('to test the property `author`', () async {
      // TODO
    });

    // The comment type at the time of creation.
    // String commentType (default value: null)
    test('to test the property `commentType`', () async {
      // TODO
    });

    // The comment content.
    // String content (default value: null)
    test('to test the property `content`', () async {
      // TODO
    });

    // The comment ID. IDs start at 1 and are unique to a pull request.
    // int id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Whether or not this comment was soft-deleted.
    // bool isDeleted (default value: null)
    test('to test the property `isDeleted`', () async {
      // TODO
    });

    // The date the comment's content was last updated.
    // DateTime lastContentUpdatedDate (default value: null)
    test('to test the property `lastContentUpdatedDate`', () async {
      // TODO
    });

    // The date the comment was last updated.
    // DateTime lastUpdatedDate (default value: null)
    test('to test the property `lastUpdatedDate`', () async {
      // TODO
    });

    // The ID of the parent comment. This is used for replies.
    // int parentCommentId (default value: null)
    test('to test the property `parentCommentId`', () async {
      // TODO
    });

    // The date the comment was first published.
    // DateTime publishedDate (default value: null)
    test('to test the property `publishedDate`', () async {
      // TODO
    });

    // A list of the users who have liked this comment.
    // List<IdentityRef> usersLiked (default value: [])
    test('to test the property `usersLiked`', () async {
      // TODO
    });


  });

}
