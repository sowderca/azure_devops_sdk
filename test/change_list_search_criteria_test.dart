import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ChangeListSearchCriteria
void main() {
  var instance = ChangeListSearchCriteria();

  group('test ChangeListSearchCriteria', () {
    // If provided, a version descriptor to compare against base
    // String compareVersion (default value: null)
    test('to test the property `compareVersion`', () async {
      // TODO
    });

    // If true, don't include delete history entries
    // bool excludeDeletes (default value: null)
    test('to test the property `excludeDeletes`', () async {
      // TODO
    });

    // Whether or not to follow renames for the given item being queried
    // bool followRenames (default value: null)
    test('to test the property `followRenames`', () async {
      // TODO
    });

    // If provided, only include history entries created after this date (string)
    // String fromDate (default value: null)
    test('to test the property `fromDate`', () async {
      // TODO
    });

    // If provided, a version descriptor for the earliest change list to include
    // String fromVersion (default value: null)
    test('to test the property `fromVersion`', () async {
      // TODO
    });

    // Path of item to search under. If the itemPaths memebr is used then it will take precedence over this.
    // String itemPath (default value: null)
    test('to test the property `itemPath`', () async {
      // TODO
    });

    // List of item paths to search under. If this member is used then itemPath will be ignored.
    // List<String> itemPaths (default value: [])
    test('to test the property `itemPaths`', () async {
      // TODO
    });

    // Version of the items to search
    // String itemVersion (default value: null)
    test('to test the property `itemVersion`', () async {
      // TODO
    });

    // Number of results to skip (used when clicking more...)
    // int skip (default value: null)
    test('to test the property `skip`', () async {
      // TODO
    });

    // If provided, only include history entries created before this date (string)
    // String toDate (default value: null)
    test('to test the property `toDate`', () async {
      // TODO
    });

    // If provided, the maximum number of history entries to return
    // int top (default value: null)
    test('to test the property `top`', () async {
      // TODO
    });

    // If provided, a version descriptor for the latest change list to include
    // String toVersion (default value: null)
    test('to test the property `toVersion`', () async {
      // TODO
    });

    // Alias or display name of user who made the changes
    // String user (default value: null)
    test('to test the property `user`', () async {
      // TODO
    });


  });

}
