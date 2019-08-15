import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ReportingWorkItemRevisionsBatch
void main() {
  var instance = ReportingWorkItemRevisionsBatch();

  group('test ReportingWorkItemRevisionsBatch', () {
    // ContinuationToken acts as a waterMark. Used while querying large results.
    // String continuationToken (default value: null)
    test('to test the property `continuationToken`', () async {
      // TODO
    });

    // Returns 'true' if it's last batch, 'false' otherwise.
    // bool isLastBatch (default value: null)
    test('to test the property `isLastBatch`', () async {
      // TODO
    });

    // The next link for the work item.
    // String nextLink (default value: null)
    test('to test the property `nextLink`', () async {
      // TODO
    });

    // Values such as rel, sourceId, TargetId, ChangedDate, isActive.
    // List<String> values (default value: [])
    test('to test the property `values`', () async {
      // TODO
    });


  });

}
