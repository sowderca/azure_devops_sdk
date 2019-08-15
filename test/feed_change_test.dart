import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for FeedChange
void main() {
  var instance = FeedChange();

  group('test FeedChange', () {
    // The type of operation.
    // String changeType (default value: null)
    test('to test the property `changeType`', () async {
      // TODO
    });

    // Feed feed (default value: null)
    test('to test the property `feed`', () async {
      // TODO
    });

    // A token that identifies the next change in the log of changes.
    // int feedContinuationToken (default value: null)
    test('to test the property `feedContinuationToken`', () async {
      // TODO
    });

    // A token that identifies the latest package change for this feed.  This can be used to quickly determine if there have been any changes to packages in a specific feed.
    // int latestPackageContinuationToken (default value: null)
    test('to test the property `latestPackageContinuationToken`', () async {
      // TODO
    });


  });

}
