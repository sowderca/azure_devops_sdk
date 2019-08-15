import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ReportingWorkItemRevisionsFilter
void main() {
  var instance = ReportingWorkItemRevisionsFilter();

  group('test ReportingWorkItemRevisionsFilter', () {
    // A list of fields to return in work item revisions. Omit this parameter to get all reportable fields.
    // List<String> fields (default value: [])
    test('to test the property `fields`', () async {
      // TODO
    });

    // Include deleted work item in the result.
    // bool includeDeleted (default value: null)
    test('to test the property `includeDeleted`', () async {
      // TODO
    });

    // Return an identity reference instead of a string value for identity fields.
    // bool includeIdentityRef (default value: null)
    test('to test the property `includeIdentityRef`', () async {
      // TODO
    });

    // Include only the latest version of a work item, skipping over all previous revisions of the work item.
    // bool includeLatestOnly (default value: null)
    test('to test the property `includeLatestOnly`', () async {
      // TODO
    });

    // Include tag reference instead of string value for System.Tags field
    // bool includeTagRef (default value: null)
    test('to test the property `includeTagRef`', () async {
      // TODO
    });

    // A list of types to filter the results to specific work item types. Omit this parameter to get work item revisions of all work item types.
    // List<String> types (default value: [])
    test('to test the property `types`', () async {
      // TODO
    });


  });

}
