import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for FeedChangesResponse
void main() {
  var instance = FeedChangesResponse();

  group('test FeedChangesResponse', () {
    // ReferenceLinks links (default value: null)
    test('to test the property `links`', () async {
      // TODO
    });

    // The number of changes in this set.
    // int count (default value: null)
    test('to test the property `count`', () async {
      // TODO
    });

    // A container that encapsulates the state of the feed after a create, update, or delete.
    // List<FeedChange> feedChanges (default value: [])
    test('to test the property `feedChanges`', () async {
      // TODO
    });

    // When iterating through the log of changes this value indicates the value that should be used for the next continuation token.
    // int nextFeedContinuationToken (default value: null)
    test('to test the property `nextFeedContinuationToken`', () async {
      // TODO
    });


  });

}
