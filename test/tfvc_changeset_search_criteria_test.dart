import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for TfvcChangesetSearchCriteria
void main() {
  var instance = TfvcChangesetSearchCriteria();

  group('test TfvcChangesetSearchCriteria', () {
    // Alias or display name of user who made the changes
    // String author (default value: null)
    test('to test the property `author`', () async {
      // TODO
    });

    // Whether or not to follow renames for the given item being queried
    // bool followRenames (default value: null)
    test('to test the property `followRenames`', () async {
      // TODO
    });

    // If provided, only include changesets created after this date (string) Think of a better name for this.
    // String fromDate (default value: null)
    test('to test the property `fromDate`', () async {
      // TODO
    });

    // If provided, only include changesets after this changesetID
    // int fromId (default value: null)
    test('to test the property `fromId`', () async {
      // TODO
    });

    // Whether to include the _links field on the shallow references
    // bool includeLinks (default value: null)
    test('to test the property `includeLinks`', () async {
      // TODO
    });

    // Path of item to search under
    // String itemPath (default value: null)
    test('to test the property `itemPath`', () async {
      // TODO
    });

    // List<TfvcMappingFilter> mappings (default value: [])
    test('to test the property `mappings`', () async {
      // TODO
    });

    // If provided, only include changesets created before this date (string) Think of a better name for this.
    // String toDate (default value: null)
    test('to test the property `toDate`', () async {
      // TODO
    });

    // If provided, a version descriptor for the latest change list to include
    // int toId (default value: null)
    test('to test the property `toId`', () async {
      // TODO
    });


  });

}
